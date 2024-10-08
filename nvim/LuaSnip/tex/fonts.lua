
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
    -- INFO: fonts
    s({
        trig = "(%a+)_rm",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathrm{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_bf",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathbf{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_fk",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathfrak{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_tt",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathtt{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_sf",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathsf{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_it",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathit{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_cl",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathcal{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_sr",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathscr{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "(%a+)_bb",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \mathbb{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "([%\\{}%a]+)_bm",
        regTrig = true,
        wordTrig = false,
        snippetType = "autosnippet"
    }, fmta(
    [[ \bm{<>} ]], {
        f(function(_, snip)
            return snip.captures[1]
        end)
    }), {
        condition = in_mathzone
    }),
}
