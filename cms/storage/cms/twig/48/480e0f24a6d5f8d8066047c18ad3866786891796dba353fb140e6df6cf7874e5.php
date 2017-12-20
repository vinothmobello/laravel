<?php

/* /var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/partials/pages-home/slideshow.htm */
class __TwigTemplate_aa56caecf62c32df74d469ab2ad1389db73e2d241820d44157a89fcb2fcda407 extends Twig_Template
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
        echo "<div class=\"lt-row row\">
  <div class=\"lt-col col s12\">
    <div class=\"lt-slider slider fullscreen\">
      <ul class=\"slides\">
        <li>
          <img src=\"";
        // line 6
        echo $this->env->getExtension('Cms\Twig\Extension')->themeFilter("assets/img/pages/home/slideshow/img-03.jpg");
        echo "\" alt=\"image\">
          <div class=\"caption center-align\">
            <h2 class=\"lt-slider-title\">Get Funding to Grow Your Business</h2>
            <h5 class=\"lt-slider-subtitle\">We offer you flexibility and accuracy in business finance</h5>
            <!--<div class=\"lt-slider-button\">
              <a href=\"https://octobercms.com/theme/laratify-octobercms-octaskin\" target=\"_blank\" class=\"waves-effect waves-light btn-large primary-color-background\">Download<i class=\"material-icons right\">input</i></a>
            </div>
            <div class=\"lt-slider-links\">
              <a href=\"https://m.do.co/c/396efaba7c20\" target=\"_blank\">View Server</a> or <a href=\"https://www.laratify.com/\" target=\"_blank\">Contact Us</a>
            </div>-->
          </div>
        </li>
        <li>
          <img src=\"";
        // line 19
        echo $this->env->getExtension('Cms\Twig\Extension')->themeFilter("assets/img/small-business-loan-tips.jpg");
        echo "\" alt=\"image\">
          <div class=\"caption center-align\">
            <h2 class=\"lt-slider-title\">By working with a mature spectrum of lenders</h2>
            <h5 class=\"lt-slider-subtitle\">we are able to offer you a range of financing options and find the solution(s) that works best for your business</h5>
          </div>
        </li>
        <!-- <li>
          <img src=\"";
        // line 26
        echo $this->env->getExtension('Cms\Twig\Extension')->themeFilter("assets/img/pages/home/slideshow/img-03.jpg");
        echo "\" alt=\"image\">
          <div class=\"caption center-align\">
            <h2 class=\"lt-slider-title\">Free &amp; Open Source</h2>
            <h5 class=\"lt-slider-subtitle\">Sky is the Limit</h5>
            <div class=\"lt-slider-button\">
              <a href=\"https://octobercms.com/theme/laratify-octobercms-octaskin\" target=\"_blank\" class=\"waves-effect waves-light btn-large primary-color-background\">Download<i class=\"material-icons right\">input</i></a>
            </div>
            <div class=\"lt-slider-links\">
              <a href=\"https://m.do.co/c/396efaba7c20\" target=\"_blank\">View Server</a> or <a href=\"https://www.laratify.com/\" target=\"_blank\">Contact Us</a>
            </div>
          </div>
        </li> -->
      </ul>
    </div>
  </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/partials/pages-home/slideshow.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  52 => 26,  42 => 19,  26 => 6,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"lt-row row\">
  <div class=\"lt-col col s12\">
    <div class=\"lt-slider slider fullscreen\">
      <ul class=\"slides\">
        <li>
          <img src=\"{{ 'assets/img/pages/home/slideshow/img-03.jpg'|theme }}\" alt=\"image\">
          <div class=\"caption center-align\">
            <h2 class=\"lt-slider-title\">Get Funding to Grow Your Business</h2>
            <h5 class=\"lt-slider-subtitle\">We offer you flexibility and accuracy in business finance</h5>
            <!--<div class=\"lt-slider-button\">
              <a href=\"https://octobercms.com/theme/laratify-octobercms-octaskin\" target=\"_blank\" class=\"waves-effect waves-light btn-large primary-color-background\">Download<i class=\"material-icons right\">input</i></a>
            </div>
            <div class=\"lt-slider-links\">
              <a href=\"https://m.do.co/c/396efaba7c20\" target=\"_blank\">View Server</a> or <a href=\"https://www.laratify.com/\" target=\"_blank\">Contact Us</a>
            </div>-->
          </div>
        </li>
        <li>
          <img src=\"{{ 'assets/img/small-business-loan-tips.jpg'|theme }}\" alt=\"image\">
          <div class=\"caption center-align\">
            <h2 class=\"lt-slider-title\">By working with a mature spectrum of lenders</h2>
            <h5 class=\"lt-slider-subtitle\">we are able to offer you a range of financing options and find the solution(s) that works best for your business</h5>
          </div>
        </li>
        <!-- <li>
          <img src=\"{{ 'assets/img/pages/home/slideshow/img-03.jpg'|theme }}\" alt=\"image\">
          <div class=\"caption center-align\">
            <h2 class=\"lt-slider-title\">Free &amp; Open Source</h2>
            <h5 class=\"lt-slider-subtitle\">Sky is the Limit</h5>
            <div class=\"lt-slider-button\">
              <a href=\"https://octobercms.com/theme/laratify-octobercms-octaskin\" target=\"_blank\" class=\"waves-effect waves-light btn-large primary-color-background\">Download<i class=\"material-icons right\">input</i></a>
            </div>
            <div class=\"lt-slider-links\">
              <a href=\"https://m.do.co/c/396efaba7c20\" target=\"_blank\">View Server</a> or <a href=\"https://www.laratify.com/\" target=\"_blank\">Contact Us</a>
            </div>
          </div>
        </li> -->
      </ul>
    </div>
  </div>
</div>", "/var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/partials/pages-home/slideshow.htm", "");
    }
}
