# Equation Element

> Generate an HTML string for inlining an SVG equation in Markdown.

<!-- Section to include introductory text. Make sure to keep an empty line after the intro `section` element and another before the `/section` close. -->

<section class="intro">

</section>

<!-- /.intro -->

<!-- Package usage documentation. -->

<section class="usage">

## Usage

```javascript
var createElement = require( '@stdlib/tools/markdown/inline-svg-equation' );
```

#### createElement( \[options,] clbk )

Generates an HTML `string` for inlining an SVG equation in Markdown.

```javascript
createElement( done );

function done( error, out ) {
    if ( error ) {
        throw error;
    }
    console.log( out );
    // e.g., => '<div class="equation" align="center" data-raw-text="" data-equation="">\n    <svg xmlns:xlink="http://www.w3.org/1999/xlink" width="0" height="0.343ex" style="vertical-align: -0.171ex;" viewBox="0 -73.8 0 147.5" role="img" focusable="false" xmlns="http://www.w3.org/2000/svg" aria-labelledby="MathJax-SVG-1-Title"><title id="MathJax-SVG-1-Title"></title><defs aria-hidden="true"></defs><g stroke="currentColor" fill="currentColor" stroke-width="0" transform="matrix(1 0 0 -1 0 0)" aria-hidden="true"></g></svg>\n</div>'
}
```

The function accepts the following `options`:

-   **className**: element class name. Default: `'equation'`.
-   **align**: element alignment. Default: `'center'`.
-   **raw**: raw equation text.
-   **label**: equation label.

To include a raw equation [TeX][tex] or [LaTeX][latex] `string` in the element, set the `raw` option.

```javascript
var opts = {
    'raw': '\\Gamma ( n ) = (n-1)!'
};

createElement( opts, done );

function done( error, out ) {
    if ( error ) {
        throw error;
    }
    console.log( out );
    // e.g., => '<div class="equation" align="center" data-raw-text="\Gamma ( n ) = (n-1)!" data-equation=""> ... </div>'
}
```

</section>

<!-- /.usage -->

<!-- Package usage notes. Make sure to keep an empty line after the `section` element and another before the `/section` close. -->

<section class="notes">

</section>

<!-- /.notes -->

<!-- Package usage examples. -->

<section class="examples">

## Examples

```javascript
var createElement = require( '@stdlib/tools/markdown/inline-svg-equation' );

var opts = {
    'className': 'eqn',
    'align': 'left',
    'raw': '\\operatorname{erf}(x) = \\frac{2}{\\sqrt\\pi}\\int_0^x e^{-t^2}\\,\\mathrm dt',
    'label': 'eq:erf'
};

createElement( opts, done );

function done( error, out ) {
    if ( error ) {
        throw error;
    }
    console.log( out );
}
```

</section>

<!-- /.examples -->

* * *

<section class="cli">

## CLI

<!-- CLI usage documentation. -->

<section class="usage">

### Usage

```text
Usage: ghsvgeqn [options]

Options:

  -h,  --help               Print this message.
  -V,  --version            Print the package version.
       --class name         Element class name. Default: equation.
       --align alignment    Element alignment. Default: center.
       --raw text           Raw equation text.
       --label label        Equation label.
```

</section>

<!-- /.usage -->

<!-- CLI usage notes. Make sure to keep an empty line after the `section` element and another before the `/section` close. -->

<section class="notes">

</section>

<!-- /.notes -->

<!-- CLI usage examples. -->

<section class="examples">

### Examples

```bash
$ ghsvgeqn --raw '\Gamma ( n ) = (n-1)!'
```

</section>

<!-- /.examples -->

</section>

<!-- /.cli -->

<!-- Section to include cited references. If references are included, add a horizontal rule *before* the section. Make sure to keep an empty line after the `section` element and another before the `/section` close. -->

<section class="references">

</section>

<!-- /.references -->

<!-- Section for all links. Make sure to keep an empty line after the `section` element and another before the `/section` close. -->

<section class="links">

[tex]: https://en.wikipedia.org/wiki/TeX

[latex]: https://en.wikipedia.org/wiki/LaTeX

</section>

<!-- /.links -->
