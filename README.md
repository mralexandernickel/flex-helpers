flex-helpers
============

Layout helpers using flexbox. Heavily inspired by angular-material.

## Install

The easiest and safest way to install this package is via bower.
Alernatively you can also download the latest tarball and put it in your project.

    bower install flex-helpers

## Usage

All you need to do is adding some attributes to your html elements

    <div flex-row flex-wrap>
      <div flex="50">...</div>
      <div flex="50">...</div>
    </div>

As you might want to influence the behaviour on different devices,
you can set the width explicitly for them

    <div flex-row flex-wrap>
      <div
        flex-desktop="33"
        flex-desktop="50"
        flex-phone="100">
        ...
      </div>
      ...
    </div>

if you dont to separate that fine, you can also do

    <div flex-row flex-wrap>
      <div
        flex-phone="100"
        flex-above-phone="33">
        ...
      </div>
      ...
    </div>

The available options are

    flex-phone
    flex-above-phone
    flex-under-tablet
    flex-tablet
    flex-above-tablet
    flex-under-desktop
    flex-desktop

## Demo
