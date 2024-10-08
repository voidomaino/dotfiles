
local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")
local postfix = require("luasnip.extras.postfix").postfix
-- conditions
local line_begin = require("luasnip.extras.expand_conditions").line_begin
local in_mathzone = require("luasnip-helper").in_mathzone
local get_visual = require("luasnip-helper").get_visual


return {
    -- INFO: auto-sized brackes
    s({
        trig = "lr(",
        snippetType = "autosnippet"
    }, fmta(
    [[ \left( <><> \right) ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "lr[",
        snippetType = "autosnippet"
    }, fmta(
    [[ \left[ <><> \right] ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "lr{",
        snippetType = "autosnippet"
    }, fmta(
    [[ \left\{ <><> \right\} ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "lr<",
        snippetType = "autosnippet"
    }, fmta(
    [[ \left\langle <><> \right\rangle ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "ab|",
        snippetType = "autosnippet"
    }, fmta(
    [[ \left\lvert <><> \right\rvert ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "no|",
        snippetType = "autosnippet"
    }, fmta(
    [[ \left\lVert <><> \right\rVert ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),


    -- INFO: manual-sized brackes
    s({
        trig = "b(",
        snippetType = "autosnippet"
    }, fmta(
    [[ \bigl( <><> \bigr) ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "b2(",
        snippetType = "autosnippet"
    }, fmta(
    [[ \Bigl( <><> \Bigr) ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "b3(",
        snippetType = "autosnippet"
    }, fmta(
    [[ \biggl( <><> \biggr) ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "b4(",
        snippetType = "autosnippet"
    }, fmta(
    [[ \Biggl( <><> \Biggr) ]], {
        d(1, get_visual),
        i(2)
    }), {
        condition = in_mathzone
    }),

}
