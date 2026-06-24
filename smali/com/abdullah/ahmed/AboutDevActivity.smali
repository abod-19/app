.class public Lcom/abdullah/ahmed/AboutDevActivity;
.super Landroid/app/Activity;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abdullah/ahmed/AboutDevActivity$FloatValueAnimatorBuilder;,
        Lcom/abdullah/ahmed/AboutDevActivity$ReflectUtil;,
        Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;,
        Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;,
        Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;,
        Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;,
        Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil;
    }
.end annotation


# instance fields
.field private _timer:Ljava/util/Timer;

.field private a:Landroid/content/Intent;

.field private b:Landroid/content/Intent;

.field private c:Landroid/content/Intent;

.field private color:Landroid/content/SharedPreferences;

.field private color1:Ljava/lang/String;

.field private color2:Ljava/lang/String;

.field private color3:Ljava/lang/String;

.field private colorf:Ljava/lang/String;

.field private f:Landroid/content/Intent;

.field private fontName:Ljava/lang/String;

.field private i:Landroid/content/Intent;

.field private im1:Landroid/widget/ImageView;

.field private im3:Landroid/widget/ImageView;

.field private im8:Landroid/widget/ImageView;

.field private im9:Landroid/widget/ImageView;

.field private imageview10:Landroid/widget/ImageView;

.field private imageview11:Landroid/widget/ImageView;

.field private imageview12:Landroid/widget/ImageView;

.field private imageview13:Landroid/widget/ImageView;

.field private imageview18:Landroid/widget/ImageView;

.field private imageview9:Landroid/widget/ImageView;

.field private k:Landroid/content/Intent;

.field private lin1:Landroid/widget/LinearLayout;

.field private lin2:Landroid/widget/LinearLayout;

.field private lin3:Landroid/widget/LinearLayout;

.field private lin4:Landroid/widget/LinearLayout;

.field private lin5:Landroid/widget/LinearLayout;

.field private lin6:Landroid/widget/LinearLayout;

.field private lin7:Landroid/widget/LinearLayout;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear13:Landroid/widget/LinearLayout;

.field private linear14:Landroid/widget/LinearLayout;

.field private linear15:Landroid/widget/LinearLayout;

.field private linear18:Landroid/widget/LinearLayout;

.field private linear19:Landroid/widget/LinearLayout;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear22:Landroid/widget/LinearLayout;

.field private linear23:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear30:Landroid/widget/LinearLayout;

.field private linear32:Landroid/widget/LinearLayout;

.field private linear33:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear7:Landroid/widget/LinearLayout;

.field private textview10:Landroid/widget/TextView;

.field private textview11:Landroid/widget/TextView;

.field private textview12:Landroid/widget/TextView;

.field private textview14:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private textview7:Landroid/widget/TextView;

.field private textview9:Landroid/widget/TextView;

.field private timer:Ljava/util/TimerTask;

.field private toolbar:Landroid/widget/LinearLayout;

.field private typeace:Ljava/lang/String;

.field private vscroll1:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->_timer:Ljava/util/Timer;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->fontName:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->typeace:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color3:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->colorf:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->a:Landroid/content/Intent;

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->b:Landroid/content/Intent;

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->c:Landroid/content/Intent;

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->k:Landroid/content/Intent;

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->f:Landroid/content/Intent;

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->i:Landroid/content/Intent;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->toolbar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->f:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$10(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin5:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin6:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin7:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/abdullah/ahmed/AboutDevActivity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->timer:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$15(Lcom/abdullah/ahmed/AboutDevActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$16(Lcom/abdullah/ahmed/AboutDevActivity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->timer:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->k:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->b:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->c:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->a:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$7(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/abdullah/ahmed/AboutDevActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin4:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    sget v0, Lcom/abdullah/ahmed/R$id;->linear1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear1:Landroid/widget/LinearLayout;

    .line 116
    sget v0, Lcom/abdullah/ahmed/R$id;->vscroll1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->vscroll1:Landroid/widget/ScrollView;

    .line 117
    sget v0, Lcom/abdullah/ahmed/R$id;->linear2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear2:Landroid/widget/LinearLayout;

    .line 118
    sget v0, Lcom/abdullah/ahmed/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->toolbar:Landroid/widget/LinearLayout;

    .line 119
    sget v0, Lcom/abdullah/ahmed/R$id;->linear3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear3:Landroid/widget/LinearLayout;

    .line 120
    sget v0, Lcom/abdullah/ahmed/R$id;->linear18:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear18:Landroid/widget/LinearLayout;

    .line 121
    sget v0, Lcom/abdullah/ahmed/R$id;->linear13:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear13:Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/abdullah/ahmed/R$id;->linear22:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear22:Landroid/widget/LinearLayout;

    .line 123
    sget v0, Lcom/abdullah/ahmed/R$id;->linear30:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear30:Landroid/widget/LinearLayout;

    .line 124
    sget v0, Lcom/abdullah/ahmed/R$id;->linear33:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear33:Landroid/widget/LinearLayout;

    .line 125
    sget v0, Lcom/abdullah/ahmed/R$id;->im3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->im3:Landroid/widget/ImageView;

    .line 126
    sget v0, Lcom/abdullah/ahmed/R$id;->linear15:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear15:Landroid/widget/LinearLayout;

    .line 127
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview13:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->imageview13:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/abdullah/ahmed/R$id;->im1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->im1:Landroid/widget/ImageView;

    .line 129
    sget v0, Lcom/abdullah/ahmed/R$id;->textview7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview7:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/abdullah/ahmed/R$id;->linear4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear4:Landroid/widget/LinearLayout;

    .line 131
    sget v0, Lcom/abdullah/ahmed/R$id;->lin1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin1:Landroid/widget/LinearLayout;

    .line 132
    sget v0, Lcom/abdullah/ahmed/R$id;->im8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->im8:Landroid/widget/ImageView;

    .line 133
    sget v0, Lcom/abdullah/ahmed/R$id;->textview5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview5:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/abdullah/ahmed/R$id;->linear5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear5:Landroid/widget/LinearLayout;

    .line 135
    sget v0, Lcom/abdullah/ahmed/R$id;->linear19:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear19:Landroid/widget/LinearLayout;

    .line 136
    sget v0, Lcom/abdullah/ahmed/R$id;->lin2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin2:Landroid/widget/LinearLayout;

    .line 137
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->imageview9:Landroid/widget/ImageView;

    .line 138
    sget v0, Lcom/abdullah/ahmed/R$id;->textview9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview9:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/abdullah/ahmed/R$id;->lin3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin3:Landroid/widget/LinearLayout;

    .line 140
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->imageview10:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/abdullah/ahmed/R$id;->textview10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview10:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/abdullah/ahmed/R$id;->linear14:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear14:Landroid/widget/LinearLayout;

    .line 143
    sget v0, Lcom/abdullah/ahmed/R$id;->lin4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin4:Landroid/widget/LinearLayout;

    .line 144
    sget v0, Lcom/abdullah/ahmed/R$id;->im9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->im9:Landroid/widget/ImageView;

    .line 145
    sget v0, Lcom/abdullah/ahmed/R$id;->textview6:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview6:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/abdullah/ahmed/R$id;->linear23:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear23:Landroid/widget/LinearLayout;

    .line 147
    sget v0, Lcom/abdullah/ahmed/R$id;->linear7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear7:Landroid/widget/LinearLayout;

    .line 148
    sget v0, Lcom/abdullah/ahmed/R$id;->lin5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin5:Landroid/widget/LinearLayout;

    .line 149
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview11:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->imageview11:Landroid/widget/ImageView;

    .line 150
    sget v0, Lcom/abdullah/ahmed/R$id;->textview11:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview11:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/abdullah/ahmed/R$id;->lin6:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin6:Landroid/widget/LinearLayout;

    .line 152
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview12:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->imageview12:Landroid/widget/ImageView;

    .line 153
    sget v0, Lcom/abdullah/ahmed/R$id;->textview12:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview12:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/abdullah/ahmed/R$id;->linear32:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear32:Landroid/widget/LinearLayout;

    .line 155
    sget v0, Lcom/abdullah/ahmed/R$id;->lin7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin7:Landroid/widget/LinearLayout;

    .line 156
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview18:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->imageview18:Landroid/widget/ImageView;

    .line 157
    sget v0, Lcom/abdullah/ahmed/R$id;->textview14:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->textview14:Landroid/widget/TextView;

    .line 158
    const-string v0, "color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    .line 160
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear33:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$1;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->im3:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$2;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$2;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->imageview13:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$3;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$3;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$4;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$4;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$5;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$5;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin3:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$6;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$6;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin4:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$7;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$7;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin5:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$8;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$8;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin6:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$9;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$9;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin7:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$10;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$10;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    return-void
.end method

.method private initializeLogic()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color1"

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color2"

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color3"

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "colorf"

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->colorf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->_them()V

    .line 398
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color3"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color3:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "colorf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->colorf:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->_them()V

    goto :goto_0
.end method

.method private overrideFonts(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 657
    :try_start_0
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 658
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 659
    check-cast p2, Landroid/view/ViewGroup;

    .line 660
    const/4 v1, 0x0

    .line 661
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 660
    if-lt v1, v2, :cond_1

    .line 691
    :cond_0
    :goto_1
    return-void

    .line 663
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 664
    invoke-direct {p0, p1, v2}, Lcom/abdullah/ahmed/AboutDevActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_2
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 669
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 670
    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 689
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getApplicationContext()Landroid/content/Context;

    goto :goto_1

    .line 673
    :cond_3
    :try_start_1
    instance-of v1, p2, Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 674
    move-object v0, p2

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 675
    check-cast p2, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 678
    :cond_4
    instance-of v1, p2, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 679
    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 680
    check-cast p2, Landroid/widget/Button;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public _GradientDrawable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 459
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    return-void
.end method

.method public _NewTapTarget(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 695
    .line 696
    invoke-static {p1, p2, p3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 697
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 698
    const v1, 0x3f75c28f    # 0.96f

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleAlpha(F)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 699
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 700
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextSize(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 701
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 702
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextSize(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 703
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 704
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->textColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 705
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->textTypeface(Landroid/graphics/Typeface;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 706
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 707
    invoke-virtual {v0, v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->drawShadow(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 708
    invoke-virtual {v0, v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->cancelable(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 709
    invoke-virtual {v0, v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->tintTarget(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 710
    invoke-virtual {v0, v2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->transparentTarget(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 712
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetRadius(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    .line 716
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$13;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/AboutDevActivity$13;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    .line 695
    invoke-static {p0, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->showFor(Landroid/app/Activity;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    .line 724
    return-void
.end method

.method public _animation()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 464
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$12;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/AboutDevActivity$12;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->timer:Ljava/util/TimerTask;

    .line 645
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 646
    return-void
.end method

.method public _changeActivityFont(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 650
    const-string v0, "fonts/"

    const-string v1, ".ttf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->fontName:Ljava/lang/String;

    .line 651
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 652
    return-void
.end method

.method public _radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V
    .locals 7

    .prologue
    .line 447
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 448
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 447
    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 451
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    double-to-int v5, p5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    double-to-int v5, p5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x2

    double-to-int v5, p7

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x3

    double-to-int v5, p7

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x4

    move-wide/from16 v0, p9

    double-to-int v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x5

    move-wide/from16 v0, p9

    double-to-int v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x6

    move-wide/from16 v0, p11

    double-to-int v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x7

    move-wide/from16 v0, p11

    double-to-int v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 453
    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 454
    const/high16 v2, 0x40e00000    # 7.0f

    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 455
    return-void
.end method

.method public _setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 4

    .prologue
    .line 2084
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    double-to-int v0, p4

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2085
    double-to-int v0, p6

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 2086
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2087
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 2089
    :cond_0
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 2090
    return-void
.end method

.method public _them()V
    .locals 15

    .prologue
    .line 413
    const-string v0, "al8dar_font"

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->_changeActivityFont(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear1:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v2, "color3"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v3, "color3"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/abdullah/ahmed/AboutDevActivity;->_GradientDrawable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/AboutDevActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/AboutDevActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin3:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/AboutDevActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin4:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/AboutDevActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin5:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/AboutDevActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin6:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/AboutDevActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->lin7:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/AboutDevActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->im1:Landroid/widget/ImageView;

    const-string v1, "    \u06aa\u064a\u0628\u0648\u0631\u062f \u060f\u0640\u0628\u0648\u062f \u0627\u0644\u0641\u062e\u0645\u06619.\n\u0627\u0641\u062e\u0645 \u0643\u064a\u0628\u0648\u0631\u062f \u0628\u0627\u0644\u0645\u062c\u0627\u0644 \u263b\ud83e\udd42."

    const-string v2, ""

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color1:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/abdullah/ahmed/AboutDevActivity;->_NewTapTarget(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 424
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 425
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 426
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color2:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 428
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/AboutDevActivity;->toolbar:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/AboutDevActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->linear1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$11;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/AboutDevActivity$11;-><init>(Lcom/abdullah/ahmed/AboutDevActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->timer:Ljava/util/TimerTask;

    .line 442
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 443
    return-void
.end method

.method public getCheckedItemPositionsToArray(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2121
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 2122
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 2126
    return-object v1

    .line 2123
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2124
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2131
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getDisplayHeightPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidthPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2136
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLocationX(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2100
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2101
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2102
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2107
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2108
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2109
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2114
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2115
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 410
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget v0, Lcom/abdullah/ahmed/R$layout;->about_dev:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/AboutDevActivity;->setContentView(I)V

    .line 109
    invoke-direct {p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity;->initialize(Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->initializeLogic()V

    .line 111
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/abdullah/ahmed/AboutDevActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2096
    return-void
.end method
