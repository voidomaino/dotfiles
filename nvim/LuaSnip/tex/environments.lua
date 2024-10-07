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
    s({ trig = "equ", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{equation}
    <>
    \end{equation}

    ]],
    { i(1) }
    ),
    { condition = line_begin }
    ),

    s({ trig = "gat", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{gather}
    <>
    \end{gather}

    ]],
    { i(1) }
    ),
    { condition = line_begin }
    ),

    s({ trig = "ali", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{align}
    <>
    \end{align}

    ]],
    { i(1) }
    ),
    { condition = line_begin }
    ),

    s({ trig = "gad", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{gathered}
    <>
    \end{gathered}
    ]],
    { i(1) }
    ),
    { condition = line_begin }
    ),

    s({ trig = "ald", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{aligned}
    <>
    \end{aligned}
    ]],
    { i(1) }
    ),
    { condition = line_begin }
    ),

    s({ trig = "cas", snippetType = "autosnippet" },
    fmta(
    [[
    \left\{\begin{aligned}
    <>
    \end{aligned}\right.
    ]],
    { i(1) }
    ),
    { condition = line_begin }
    ),

    s({ trig = "pmat", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{pmatrix} <> \end{pmatrix}
    ]],
    { i(1) }
    ),
    { condition = in_mathzone }
    ),

    s({ trig = "bmat", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{bmatrix} <> \end{bmatrix}
    ]],
    { i(1) }
    ),
    { condition = in_mathzone }
    ),

    s({ trig = "Bmat", snippetType = "autosnippet" },
    fmta(
    [[
    \begin{Bmatrix} <> \end{Bmatrix}
    ]],
    { i(1) }
    ),
    { condition = in_mathzone }
    ),

    s({
        trig = "vmat",
        snippetType = "autosnippet"
    }, fmta(
    [[ \begin{vmatrix} <> \end{vmatrix} ]], {
        i(1)
    }), {
        condition = in_mathzone
    }),

    s({
        trig = "Vmat",
        snippetType = "autosnippet"
    }, fmta(
    [[ \begin{Vmatrix} <> \end{Vmatrix} ]], {
        i(1)
    }), {
        condition = in_mathzone
    }),
}
