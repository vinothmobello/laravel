<?php

/* /var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/pages/home.htm */
class __TwigTemplate_e18fd8bf256f20140c40917bc407ac2cedf8d6e8c61903f31b8175e70fa3a4d7 extends Twig_Template
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
        echo "<section id=\"lt-slideshow\" class=\"lt-section lt-section-fullwidth section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-slideshow-content\">
      ";
        // line 4
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/slideshow"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 5
        echo "    </div>
  </div>
</section>

<section id=\"lt-feature\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-feature-content\">
      ";
        // line 12
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/feature"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 13
        echo "    </div>
  </div>
</section>
<hr>
<section id=\"lt-extension\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-extension-content\">
      ";
        // line 20
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("pages-home/extension"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 21
        echo "    </div>
  </div>
</section>";
    }

    public function getTemplateName()
    {
        return "/var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  54 => 21,  50 => 20,  41 => 13,  37 => 12,  28 => 5,  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<section id=\"lt-slideshow\" class=\"lt-section lt-section-fullwidth section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-slideshow-content\">
      {% partial \"pages-home/slideshow\" %}
    </div>
  </div>
</section>

<section id=\"lt-feature\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-feature-content\">
      {% partial \"pages-home/feature\" %}
    </div>
  </div>
</section>
<hr>
<section id=\"lt-extension\" class=\"lt-section section\">
  <div class=\"lt-container container\">
    <div class=\"lt-content lt-extension-content\">
      {% partial \"pages-home/extension\" %}
    </div>
  </div>
</section>", "/var/www/html/cms/octobercms/themes/laratify-octobercms-octaskin/pages/home.htm", "");
    }
}
