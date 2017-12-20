<?php

/* /var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/partials/pages-all/navigation.htm */
class __TwigTemplate_be035f0b87a2f04e4d2119a3de2e556c5d97f04a39295e9aab01ccaed7adc1d9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"lt-navbar navbar-fixed\">
  <nav class=\"lt-no-background\">
    <div class=\"nav-wrapper\">
      <div class=\"lt-container container\">
        <a href=\"";
        // line 5
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("home");
        echo "\" class=\"brand-logo white-text\" style=\"margin-top:6px;\">
        <img width=\"180\" src=\"";
        // line 6
        echo $this->env->getExtension('Cms\Twig\Extension')->themeFilter("assets/img/cashtag_white.png");
        echo "\" alt=\"image\">
        </a>
        <a href=\"#\" data-activates=\"mobile-menu\" class=\"lt-mobile-toggle button-collapse\"><i class=\"material-icons\">menu</i></a>
        <ul class=\"right hide-on-med-and-down\">
          <li class=\"";
        // line 10
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "home")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("home");
        echo "\">Home</a></li>
          <li class=\"";
        // line 11
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "about")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("about");
        echo "\">About</a></li>
          <li class=\"";
        // line 12
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "borrowers")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("borrowers");
        echo "\">Borrowers</a></li>
          <li class=\"";
        // line 13
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "partners")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("partners");
        echo "\">Partners</a></li>
          <li class=\"";
        // line 14
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "contact")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("contact");
        echo "\">Contact</a></li>
        </ul>
        <ul class=\"side-nav\" id=\"mobile-menu\">
          <li class=\"";
        // line 17
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "home")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("home");
        echo "\">Home</a></li>
          <li class=\"";
        // line 18
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "about")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("about");
        echo "\">About</a></li>
          <li class=\"";
        // line 19
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "borrowers")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("borrowers");
        echo "\">Borrowers</a></li>
          <li class=\"";
        // line 20
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "partners")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("partners");
        echo "\">Partners</a></li>
          <li class=\"";
        // line 21
        if (($this->getAttribute($this->getAttribute(($context["this"] ?? null), "page", array()), "id", array()) == "contact")) {
            echo "active";
        }
        echo "\"><a href=\"";
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFilter("contact");
        echo "\">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>";
    }

    public function getTemplateName()
    {
        return "/var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/partials/pages-all/navigation.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  110 => 21,  102 => 20,  94 => 19,  86 => 18,  78 => 17,  68 => 14,  60 => 13,  52 => 12,  44 => 11,  36 => 10,  29 => 6,  25 => 5,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"lt-navbar navbar-fixed\">
  <nav class=\"lt-no-background\">
    <div class=\"nav-wrapper\">
      <div class=\"lt-container container\">
        <a href=\"{{ 'home'|page }}\" class=\"brand-logo white-text\" style=\"margin-top:6px;\">
        <img width=\"180\" src=\"{{ 'assets/img/cashtag_white.png'|theme }}\" alt=\"image\">
        </a>
        <a href=\"#\" data-activates=\"mobile-menu\" class=\"lt-mobile-toggle button-collapse\"><i class=\"material-icons\">menu</i></a>
        <ul class=\"right hide-on-med-and-down\">
          <li class=\"{% if this.page.id == 'home' %}active{% endif %}\"><a href=\"{{ 'home'|page }}\">Home</a></li>
          <li class=\"{% if this.page.id == 'about' %}active{% endif %}\"><a href=\"{{ 'about'|page }}\">About</a></li>
          <li class=\"{% if this.page.id == 'borrowers' %}active{% endif %}\"><a href=\"{{ 'borrowers'|page }}\">Borrowers</a></li>
          <li class=\"{% if this.page.id == 'partners' %}active{% endif %}\"><a href=\"{{ 'partners'|page }}\">Partners</a></li>
          <li class=\"{% if this.page.id == 'contact' %}active{% endif %}\"><a href=\"{{ 'contact'|page }}\">Contact</a></li>
        </ul>
        <ul class=\"side-nav\" id=\"mobile-menu\">
          <li class=\"{% if this.page.id == 'home' %}active{% endif %}\"><a href=\"{{ 'home'|page }}\">Home</a></li>
          <li class=\"{% if this.page.id == 'about' %}active{% endif %}\"><a href=\"{{ 'about'|page }}\">About</a></li>
          <li class=\"{% if this.page.id == 'borrowers' %}active{% endif %}\"><a href=\"{{ 'borrowers'|page }}\">Borrowers</a></li>
          <li class=\"{% if this.page.id == 'partners' %}active{% endif %}\"><a href=\"{{ 'partners'|page }}\">Partners</a></li>
          <li class=\"{% if this.page.id == 'contact' %}active{% endif %}\"><a href=\"{{ 'contact'|page }}\">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>
</div>", "/var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/partials/pages-all/navigation.htm", "");
    }
}
