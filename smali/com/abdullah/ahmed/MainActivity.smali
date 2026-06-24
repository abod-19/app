.class public Lcom/abdullah/ahmed/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


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

.field private im10:Landroid/widget/ImageView;

.field private im2:Landroid/widget/ImageView;

.field private im3:Landroid/widget/ImageView;

.field private im8:Landroid/widget/ImageView;

.field private im9:Landroid/widget/ImageView;

.field private imageview10:Landroid/widget/ImageView;

.field private imageview11:Landroid/widget/ImageView;

.field private imageview12:Landroid/widget/ImageView;

.field private imageview13:Landroid/widget/ImageView;

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

.field private linear10:Landroid/widget/LinearLayout;

.field private linear13:Landroid/widget/LinearLayout;

.field private linear14:Landroid/widget/LinearLayout;

.field private linear15:Landroid/widget/LinearLayout;

.field private linear16:Landroid/widget/LinearLayout;

.field private linear17:Landroid/widget/LinearLayout;

.field private linear18:Landroid/widget/LinearLayout;

.field private linear19:Landroid/widget/LinearLayout;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear22:Landroid/widget/LinearLayout;

.field private linear23:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear7:Landroid/widget/LinearLayout;

.field private textview10:Landroid/widget/TextView;

.field private textview11:Landroid/widget/TextView;

.field private textview12:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private textview7:Landroid/widget/TextView;

.field private textview8:Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->_timer:Ljava/util/Timer;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->fontName:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->typeace:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color3:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->colorf:Ljava/lang/String;

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->a:Landroid/content/Intent;

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->i:Landroid/content/Intent;

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->b:Landroid/content/Intent;

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->c:Landroid/content/Intent;

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->k:Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->f:Landroid/content/Intent;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->toolbar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin4:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin5:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin6:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin7:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->vscroll1:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/abdullah/ahmed/MainActivity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity;->timer:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$17(Lcom/abdullah/ahmed/MainActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$18(Lcom/abdullah/ahmed/MainActivity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->timer:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->f:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->k:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->b:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->c:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$7(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/abdullah/ahmed/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->a:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$9(Lcom/abdullah/ahmed/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    sget v0, Lcom/abdullah/ahmed/R$id;->linear1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear1:Landroid/widget/LinearLayout;

    .line 117
    sget v0, Lcom/abdullah/ahmed/R$id;->vscroll1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->vscroll1:Landroid/widget/ScrollView;

    .line 118
    sget v0, Lcom/abdullah/ahmed/R$id;->linear2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear2:Landroid/widget/LinearLayout;

    .line 119
    sget v0, Lcom/abdullah/ahmed/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->toolbar:Landroid/widget/LinearLayout;

    .line 120
    sget v0, Lcom/abdullah/ahmed/R$id;->linear3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear3:Landroid/widget/LinearLayout;

    .line 121
    sget v0, Lcom/abdullah/ahmed/R$id;->linear18:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear18:Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/abdullah/ahmed/R$id;->linear13:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear13:Landroid/widget/LinearLayout;

    .line 123
    sget v0, Lcom/abdullah/ahmed/R$id;->linear22:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear22:Landroid/widget/LinearLayout;

    .line 124
    sget v0, Lcom/abdullah/ahmed/R$id;->linear16:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear16:Landroid/widget/LinearLayout;

    .line 125
    sget v0, Lcom/abdullah/ahmed/R$id;->linear10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear10:Landroid/widget/LinearLayout;

    .line 126
    sget v0, Lcom/abdullah/ahmed/R$id;->linear15:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear15:Landroid/widget/LinearLayout;

    .line 127
    sget v0, Lcom/abdullah/ahmed/R$id;->im2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im2:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/abdullah/ahmed/R$id;->im3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im3:Landroid/widget/ImageView;

    .line 129
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview13:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->imageview13:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/abdullah/ahmed/R$id;->im1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im1:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcom/abdullah/ahmed/R$id;->textview7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview7:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/abdullah/ahmed/R$id;->linear4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear4:Landroid/widget/LinearLayout;

    .line 133
    sget v0, Lcom/abdullah/ahmed/R$id;->lin1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin1:Landroid/widget/LinearLayout;

    .line 134
    sget v0, Lcom/abdullah/ahmed/R$id;->im8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im8:Landroid/widget/ImageView;

    .line 135
    sget v0, Lcom/abdullah/ahmed/R$id;->textview5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview5:Landroid/widget/TextView;

    .line 136
    sget v0, Lcom/abdullah/ahmed/R$id;->linear5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear5:Landroid/widget/LinearLayout;

    .line 137
    sget v0, Lcom/abdullah/ahmed/R$id;->linear19:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear19:Landroid/widget/LinearLayout;

    .line 138
    sget v0, Lcom/abdullah/ahmed/R$id;->lin2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin2:Landroid/widget/LinearLayout;

    .line 139
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->imageview9:Landroid/widget/ImageView;

    .line 140
    sget v0, Lcom/abdullah/ahmed/R$id;->textview9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview9:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/abdullah/ahmed/R$id;->lin3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin3:Landroid/widget/LinearLayout;

    .line 142
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->imageview10:Landroid/widget/ImageView;

    .line 143
    sget v0, Lcom/abdullah/ahmed/R$id;->textview10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview10:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/abdullah/ahmed/R$id;->linear14:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear14:Landroid/widget/LinearLayout;

    .line 145
    sget v0, Lcom/abdullah/ahmed/R$id;->lin4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin4:Landroid/widget/LinearLayout;

    .line 146
    sget v0, Lcom/abdullah/ahmed/R$id;->im9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im9:Landroid/widget/ImageView;

    .line 147
    sget v0, Lcom/abdullah/ahmed/R$id;->textview6:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview6:Landroid/widget/TextView;

    .line 148
    sget v0, Lcom/abdullah/ahmed/R$id;->linear23:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear23:Landroid/widget/LinearLayout;

    .line 149
    sget v0, Lcom/abdullah/ahmed/R$id;->linear7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear7:Landroid/widget/LinearLayout;

    .line 150
    sget v0, Lcom/abdullah/ahmed/R$id;->lin5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin5:Landroid/widget/LinearLayout;

    .line 151
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview11:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->imageview11:Landroid/widget/ImageView;

    .line 152
    sget v0, Lcom/abdullah/ahmed/R$id;->textview11:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview11:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/abdullah/ahmed/R$id;->lin6:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin6:Landroid/widget/LinearLayout;

    .line 154
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview12:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->imageview12:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/abdullah/ahmed/R$id;->textview12:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview12:Landroid/widget/TextView;

    .line 156
    sget v0, Lcom/abdullah/ahmed/R$id;->linear17:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->linear17:Landroid/widget/LinearLayout;

    .line 157
    sget v0, Lcom/abdullah/ahmed/R$id;->lin7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin7:Landroid/widget/LinearLayout;

    .line 158
    sget v0, Lcom/abdullah/ahmed/R$id;->im10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im10:Landroid/widget/ImageView;

    .line 159
    sget v0, Lcom/abdullah/ahmed/R$id;->textview8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->textview8:Landroid/widget/TextView;

    .line 160
    const-string v0, "color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/abdullah/ahmed/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    .line 162
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->toolbar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$1;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im2:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$2;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->im3:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$3;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->imageview13:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$4;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$5;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$6;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin3:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$7;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin4:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$8;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin5:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$9;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin6:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$10;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin7:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/MainActivity$11;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    return-void
.end method

.method private initializeLogic()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "#ffffffff"

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    .line 592
    const-string v0, "#ffffffff"

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    .line 593
    const-string v0, "#FFF5F5F5"

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color3:Ljava/lang/String;

    .line 594
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->colorf:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color1"

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color2"

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 597
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color3"

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 598
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "colorf"

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->colorf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 599
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->_them()V

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color3"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color3:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "colorf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->colorf:Ljava/lang/String;

    .line 606
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->_them()V

    goto :goto_0
.end method

.method private overrideFonts(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 866
    :try_start_0
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 867
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 868
    check-cast p2, Landroid/view/ViewGroup;

    .line 869
    const/4 v1, 0x0

    .line 870
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 869
    if-lt v1, v2, :cond_1

    .line 900
    :cond_0
    :goto_1
    return-void

    .line 872
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 873
    invoke-direct {p0, p1, v2}, Lcom/abdullah/ahmed/MainActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_2
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 878
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 879
    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 898
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getApplicationContext()Landroid/content/Context;

    goto :goto_1

    .line 882
    :cond_3
    :try_start_1
    instance-of v1, p2, Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 883
    move-object v0, p2

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 884
    check-cast p2, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 887
    :cond_4
    instance-of v1, p2, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 888
    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 889
    check-cast p2, Landroid/widget/Button;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public Mo_Settings(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/inputmethod/latin/DomainEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/BackupPro;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    const-string v1, " \u0627\u0644\u0627\u0639\u062f\u0627\u062f\u0627\u062a "

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public _GradientDrawable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 668
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

    .line 669
    return-void
.end method

.method public _animation()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 673
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->lin7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$13;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->timer:Ljava/util/TimerTask;

    .line 854
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 855
    return-void
.end method

.method public _changeActivityFont(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 859
    const-string v0, "fonts/"

    const-string v1, ".ttf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->fontName:Ljava/lang/String;

    .line 860
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/abdullah/ahmed/MainActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 861
    return-void
.end method

.method public _radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V
    .locals 7

    .prologue
    .line 656
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 657
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 656
    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 660
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

    .line 662
    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 663
    const/high16 v2, 0x40e00000    # 7.0f

    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 664
    return-void
.end method

.method public _setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 4

    .prologue
    .line 909
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

    .line 910
    double-to-int v0, p6

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 912
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 914
    :cond_0
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 915
    return-void
.end method

.method public _them()V
    .locals 15

    .prologue
    .line 623
    const-string v0, "al8dar_font"

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->_changeActivityFont(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->vscroll1:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v2, "color3"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v3, "color3"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/abdullah/ahmed/MainActivity;->_GradientDrawable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->lin1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/MainActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->lin2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/MainActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->lin3:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/MainActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->lin4:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/MainActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->lin5:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/MainActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->lin6:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/MainActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->lin7:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/MainActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/MainActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 633
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 634
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 635
    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->color2:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 637
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/MainActivity;->toolbar:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/MainActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 638
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->vscroll1:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 639
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$12;-><init>(Lcom/abdullah/ahmed/MainActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->timer:Ljava/util/TimerTask;

    .line 651
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 652
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
    .line 945
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 946
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 947
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 951
    return-object v1

    .line 948
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 949
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 956
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 966
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 961
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getResources()Landroid/content/res/Resources;

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
    .line 925
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 926
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 927
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 932
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 933
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 934
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 939
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 940
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
    .line 613
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 620
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->finishAffinity()V

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v0, Lcom/abdullah/ahmed/R$layout;->main:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/MainActivity;->setContentView(I)V

    .line 110
    invoke-direct {p0, p1}, Lcom/abdullah/ahmed/MainActivity;->initialize(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/abdullah/ahmed/MainActivity;->initializeLogic()V

    .line 112
    invoke-static {p0}, LModder/Hub;->Mod(Landroid/content/Context;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/abdullah/ahmed/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 921
    return-void
.end method
