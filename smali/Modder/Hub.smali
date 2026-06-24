.class public LModder/Hub;
.super Ljava/lang/Object;
.source "Hub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LModder/Hub$B;,
        LModder/Hub$A;,
        LModder/Hub$C;
    }
.end annotation


# static fields
.field private static save_mt_dlg:Landroid/widget/CheckBox;


# instance fields
.field MT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 14

    .prologue
    .line 205
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/lang/String;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    new-instance v5, Ljava/lang/String;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    new-instance v7, Ljava/lang/String;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/16 v9, 0x18

    new-array v9, v9, [C

    fill-array-data v9, :array_0

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v2, LModder/Hub;->MT:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x54s
        0x44s
        0x41s
        0x78s
        0x64s
        0x6cs
        0x70s
        0x48s
        0x55s
        0x6ds
        0x78s
        0x6as
        0x62s
        0x44s
        0x6cs
        0x4as
        0x5as
        0x46s
        0x64s
        0x4as
        0x64s
        0x67s
        0x3ds
        0x3ds
    .end array-data
.end method

.method public static Mod(Landroid/content/Context;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    move-object/from16 v1, p0

    new-instance v20, Ljava/lang/String;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    new-instance v22, Ljava/lang/String;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    new-instance v24, Ljava/lang/String;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x18

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v3, v20

    .line 143
    new-instance v20, Ljava/lang/String;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    new-instance v22, Ljava/lang/String;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    new-instance v24, Ljava/lang/String;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x20

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v26, v0

    fill-array-data v26, :array_1

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v4, v20

    .line 144
    new-instance v20, Ljava/lang/String;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    new-instance v22, Ljava/lang/String;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    new-instance v24, Ljava/lang/String;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x1c

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v26, v0

    fill-array-data v26, :array_2

    invoke-direct/range {v25 .. v26}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v5, v20

    .line 145
    move-object/from16 v20, v1

    invoke-static/range {v20 .. v20}, LModder/Hub;->ରାଧାରାଣୀ୧(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, LModder/Hub;->କୃଷ୍ଣisHere(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 201
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-object/from16 v22, v1

    invoke-direct/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v6, v20

    .line 149
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-object/from16 v22, v1

    invoke-direct/range {v21 .. v22}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, v20

    .line 150
    move-object/from16 v20, v7

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v8, v20

    .line 153
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-object/from16 v22, v1

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v9, v20

    .line 154
    move-object/from16 v20, v9

    const-string v21, "<font color= #FF111111>Hi</font>"

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    move-object/from16 v20, v9

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 156
    move-object/from16 v20, v9

    const/16 v21, 0x2d

    const/16 v22, 0x1e

    const/16 v23, 0x2d

    const/16 v24, 0xa

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v10, v20

    .line 158
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    move-object/from16 v20, v9

    const/16 v21, 0x11

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    move-object/from16 v20, v9

    const/16 v21, 0x19

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextSize(F)V

    .line 161
    move-object/from16 v20, v6

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 162
    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    const-string v22, "<font color= #FF888888>\u0640 \u0645\u0631\u062d\u0628\u0627 \u0628\u0643 \u0641\u064a \u0643\u064a\u0628\u0648\u0631\u062f \u0639\u0628\u0648\u062f \n\u0640 \u062a\u0627\u0628\u0639 \u0642\u0646\u0627\u062a\u064a \u0644\u0645\u0632\u064a\u062f \u0645\u0646 \u0627\u0644\u062a\u062d\u062f\u064a\u062b\u0627\u062a \n\u0640 \u0627\u0644\u062b\u064a\u0645\u0627\u062a https://t.me/jnssghb/2818</font>"

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v11, v20

    .line 163
    move-object/from16 v20, v7

    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-object/from16 v22, v1

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v12, v20

    .line 166
    move-object/from16 v20, v12

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    move-object/from16 v20, v12

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setClickable(Z)V

    .line 168
    move-object/from16 v20, v12

    const/16 v21, 0xf

    invoke-static/range {v20 .. v21}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v20

    .line 169
    move-object/from16 v20, v12

    const-string v21, "#3F51B5"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 170
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v13, v20

    .line 171
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 172
    move-object/from16 v20, v12

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 173
    move-object/from16 v20, v12

    const/16 v21, 0x12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    move-object/from16 v20, v7

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 176
    new-instance v20, Landroid/widget/CheckBox;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-object/from16 v22, v1

    invoke-direct/range {v21 .. v22}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    sput-object v20, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    .line 177
    sget-object v20, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    const-string v21, "Don\'t Show"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget-object v20, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    const-string v21, "#2A3AFF"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 179
    sget-object v20, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    const/high16 v21, 0x40c00000    # 6.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setElevation(F)V

    .line 180
    sget-object v20, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    sget-object v20, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const-string v21, "#2AC23B"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 182
    move-object/from16 v20, v7

    sget-object v21, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    move-object/from16 v20, v7

    const/16 v21, 0x2d

    const/16 v22, 0xa

    const/16 v23, 0x2d

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 185
    move-object/from16 v20, v6

    const-string v21, "<font color= #3F51B5>\u062a\u0644\u062c\u0631\u0627\u0645</font>"

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    new-instance v22, LModder/Hub$A;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    new-instance v24, LModder/Hub;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, LModder/Hub;-><init>()V

    move-object/from16 v25, v1

    invoke-direct/range {v23 .. v25}, LModder/Hub$A;-><init>(LModder/Hub;Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 186
    move-object/from16 v20, v6

    const-string v21, "<font color= #3F51B5>\u0645\u0634\u0627\u0631\u0643\u0629</font>"

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    new-instance v22, LModder/Hub$B;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    new-instance v24, LModder/Hub;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, LModder/Hub;-><init>()V

    move-object/from16 v25, v1

    invoke-direct/range {v23 .. v25}, LModder/Hub$B;-><init>(LModder/Hub;Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 187
    move-object/from16 v20, v6

    const-string v21, "<font color= #3F51B5>\u0627\u0644\u063a\u0627\u0621</font>"

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    new-instance v22, LModder/Hub$C;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    new-instance v24, LModder/Hub;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, LModder/Hub;-><init>()V

    move-object/from16 v25, v1

    invoke-direct/range {v23 .. v25}, LModder/Hub$C;-><init>(LModder/Hub;Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 188
    move-object/from16 v20, v6

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 189
    const/16 v20, 0x7

    move/from16 v14, v20

    .line 190
    const/16 v20, 0x19

    move/from16 v15, v20

    .line 191
    const-string v20, "#FFFFFF"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    move/from16 v16, v20

    .line 192
    new-instance v20, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    invoke-direct/range {v21 .. v21}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v17, v20

    .line 194
    move-object/from16 v20, v17

    const-string v21, "#FFFFFF"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 195
    move-object/from16 v20, v17

    move/from16 v21, v14

    move/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 196
    move-object/from16 v20, v17

    move/from16 v21, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 197
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    move-object/from16 v18, v20

    .line 198
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    move-object/from16 v20, v18

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 200
    move-object/from16 v20, v18

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 201
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 142
    :array_0
    .array-data 2
        0x54s
        0x44s
        0x41s
        0x78s
        0x64s
        0x6cs
        0x70s
        0x48s
        0x55s
        0x6ds
        0x78s
        0x6as
        0x62s
        0x44s
        0x6cs
        0x4as
        0x5as
        0x46s
        0x64s
        0x4as
        0x64s
        0x67s
        0x3ds
        0x3ds
    .end array-data

    .line 143
    :array_1
    .array-data 2
        0x56s
        0x46s
        0x63s
        0x35s
        0x61s
        0x31s
        0x70s
        0x48s
        0x56s
        0x6es
        0x6cs
        0x59s
        0x4ds
        0x47s
        0x67s
        0x78s
        0x57s
        0x57s
        0x77s
        0x35s
        0x56s
        0x57s
        0x46s
        0x59s
        0x55s
        0x6es
        0x4es
        0x61s
        0x55s
        0x54s
        0x30s
        0x39s
    .end array-data

    .line 144
    :array_2
    .array-data 2
        0x56s
        0x46s
        0x63s
        0x35s
        0x61s
        0x31s
        0x70s
        0x48s
        0x56s
        0x6es
        0x6cs
        0x59s
        0x4ds
        0x47s
        0x67s
        0x78s
        0x57s
        0x57s
        0x77s
        0x35s
        0x54s
        0x6ds
        0x4ds
        0x79s
        0x59s
        0x7as
        0x30s
        0x3ds
    .end array-data
.end method

.method static synthetic access$L1000000()Landroid/widget/CheckBox;
    .locals 3

    sget-object v2, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/widget/CheckBox;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, LModder/Hub;->save_mt_dlg:Landroid/widget/CheckBox;

    return-void
.end method

.method public static କୃଷ୍ଣisHere(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 48
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public static ରାଧାmake(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v4, v0

    invoke-static {v4}, LModder/Hub;->କୃଷ୍ଣisHere(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 54
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    :cond_0
    return-void
.end method

.method public static ରାଧାରାଣୀ(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    new-instance v8, Ljava/io/File;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 66
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 87
    :goto_0
    return-void

    .line 68
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    move-object v3, v8

    .line 75
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 76
    move-object v8, v3

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 82
    :goto_1
    move v8, v5

    move-object v9, v4

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 87
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    goto :goto_0

    .line 76
    :cond_3
    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 77
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 78
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LModder/Hub;->ରାଧାରାଣୀ(Ljava/lang/String;)V

    .line 81
    :cond_4
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 82
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static ରାଧାରାଣୀ୧(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
