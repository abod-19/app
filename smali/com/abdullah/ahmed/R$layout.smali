.class public final Lcom/abdullah/ahmed/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static about_dev:I

.field public static ah_about:I

.field public static ah_change:I

.field public static ah_color:I

.field public static dsettings:I

.field public static enable:I

.field public static fancy:I

.field public static language:I

.field public static linkchat:I

.field public static main:I

.field public static note:I

.field public static repeattex:I

.field public static replacetext:I

.field public static rosary:I

.field public static settings:I

.field public static shortcuts:I

.field public static snow:I

.field public static theme:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const-string v0, "about_dev"

    invoke-static {v0}, LABOD/Tools;->intLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/abdullah/ahmed/R$layout;->about_dev:I

    .line 150
    const-string v0, "ah_about"

    invoke-static {v0}, LABOD/Tools;->intLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/abdullah/ahmed/R$layout;->ah_about:I

    .line 151
    const-string v0, "ah_change"

    invoke-static {v0}, LABOD/Tools;->intLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/abdullah/ahmed/R$layout;->ah_change:I

    .line 152
    const-string v0, "ah_color"

    invoke-static {v0}, LABOD/Tools;->intLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/abdullah/ahmed/R$layout;->ah_color:I

    .line 154
    const-string v0, "enable"

    invoke-static {v0}, LABOD/Tools;->intLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/abdullah/ahmed/R$layout;->enable:I

    .line 158
    const-string v0, "main"

    invoke-static {v0}, LABOD/Tools;->intLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/abdullah/ahmed/R$layout;->main:I

    .line 163
    const-string v0, "settings"

    invoke-static {v0}, LABOD/Tools;->intLayout(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/abdullah/ahmed/R$layout;->settings:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
