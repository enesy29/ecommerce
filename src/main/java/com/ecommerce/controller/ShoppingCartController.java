package com.ecommerce.controller;

import com.ecommerce.domain.CartItem;
import com.ecommerce.domain.Product;
import com.ecommerce.domain.ShoppingCart;
import com.ecommerce.domain.User;
import com.ecommerce.service.CartItemService;
import com.ecommerce.service.ProductService;
import com.ecommerce.service.ShoppingCartService;
import com.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class ShoppingCartController {

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private ProductService productService;

    @Autowired
    private ShoppingCartService shoppingCartService;

    @RequestMapping(value = "/cart" , method = RequestMethod.GET)
    public ModelAndView shoppingCart(Model model, ModelAndView modelAndView , HttpSession session) {
        User user = (User) session.getAttribute("userSession");
        ShoppingCart shoppingCart = user.getShoppingCart();
        List<CartItem> cartItemList = cartItemService.findByShoppingCart(shoppingCart);
        shoppingCartService.updateShoppingCart(shoppingCart);
        model.addAttribute("cartItemList", cartItemList);
        model.addAttribute("shoppingCart", shoppingCart);
        model.addAttribute("pageType","/WEB-INF/jsp/cart.jsp");
        modelAndView.setViewName("main");
        return modelAndView;
    }

    @RequestMapping(value = "/addToCart/{id}" , method = RequestMethod.POST)
    public ModelAndView addItem(
            @ModelAttribute("product") Product product,
            @ModelAttribute("qty") String qty,
            HttpSession session,
            Model model,
            ModelAndView modelAndView
    ) {
        User user = (User) session.getAttribute("userSession");
        product = productService.findOne(product.getId());

        if ( Integer.parseInt("1") > product.getStock()){
            model.addAttribute("stockError" , "Almak istediğiniz ürün sayısı stok sayısından fazla !");
            modelAndView.setViewName("redirect:/view/{id}");
            return modelAndView;
        }

        CartItem cartItem = cartItemService.addProductToCartItem(product, user, Integer.parseInt("1"));
        model.addAttribute("addProductSuccess", true);
        modelAndView.setViewName("redirect:/view/{id}");
        return modelAndView;
    }

    @RequestMapping("/updateCartItem/{cartItemId}")
    public ModelAndView updateShoppingCart(
            @ModelAttribute("id") Long cartItemId,
            @ModelAttribute("qty") int qty,
            ModelAndView modelAndView
    )
    {
        CartItem cartItem = cartItemService.findById(cartItemId);
        cartItem.setQty(qty);
        cartItemService.updateCartItem(cartItem);
        modelAndView.setViewName("redirect:/cart");
        return modelAndView;
    }

    @RequestMapping(value = "/cart/removeItem/{id}" , method = RequestMethod.GET)
    public ModelAndView cartItemRemove(ModelAndView modelAndView, @PathVariable long id) {
        cartItemService.removeCartItem(cartItemService.findById(id));
        modelAndView.setViewName("redirect:/cart");
        return modelAndView;
    }
}
