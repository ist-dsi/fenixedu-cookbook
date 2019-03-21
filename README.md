# FenixEdu Cookbook

[![Build Status](https://travis-ci.org/ist-dsi/fenixedu-cookbook.svg?branch=master)](https://travis-ci.org/ist-dsi/fenixedu-cookbook)

## Overview

This cookbook installs and configures [FenixEdu is a modular software platform for academic and administrative management](http://fenixedu.org/).

### Supported FenixEdu Versions

| FenixEdu webapp Version | Cookbook Version |
|:-----------------------:|:----------------:|
| 0.0.1                   | v0.0.1           |

## Requirements

### Platforms

The following platforms and versions are tested and supported using [test-kitchen](http://kitchen.ci/)

* Ubuntu 18 LTS
* Debian 9
* CentOS 7

### Chef

* Chef 14+

### Dependencies

## Usage

Using this cookbook is relatively straightforward. It is recommended to create a project or organization specific [wrapper cookbook](https://www.chef.io/blog/2013/12/03/doing-wrapper-cookbooks-right/) and add the desired recipes (for example, to setup a database) to the run list of a node.

### Attributes

## Authors
* Author:: Sergio Silva      <sergio.silva@tecnico.ulisboa.pt>
* Author:: Simão Silva      <simao.silva@tecnico.ulisboa.pt>