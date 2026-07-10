.class public Lcom/abdullah/ahmed/EnableActivity;
.super Landroid/app/Activity;
.source "EnableActivity.java"


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

.field private im4:Landroid/widget/ImageView;

.field private im5:Landroid/widget/ImageView;

.field private im6:Landroid/widget/ImageView;

.field private im7:Landroid/widget/ImageView;

.field private im8:Landroid/widget/ImageView;

.field private im9:Landroid/widget/ImageView;

.field private imageview10:Landroid/widget/ImageView;

.field private imageview9:Landroid/widget/ImageView;

.field private k:Landroid/content/Intent;

.field private lin1:Landroid/widget/LinearLayout;

.field private lin16:Landroid/widget/LinearLayout;

.field private lin2:Landroid/widget/LinearLayout;

.field private lin3:Landroid/widget/LinearLayout;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear13:Landroid/widget/LinearLayout;

.field private linear14:Landroid/widget/LinearLayout;

.field private linear15:Landroid/widget/LinearLayout;

.field private linear16:Landroid/widget/LinearLayout;

.field private linear17:Landroid/widget/LinearLayout;

.field private linear18:Landroid/widget/LinearLayout;

.field private linear19:Landroid/widget/LinearLayout;

.field private linear5:Landroid/widget/LinearLayout;

.field private linear7:Landroid/widget/LinearLayout;

.field private textview5:Landroid/widget/TextView;

.field private textview6:Landroid/widget/TextView;

.field private textview7:Landroid/widget/TextView;

.field private textview8:Landroid/widget/TextView;

.field private timer:Ljava/util/TimerTask;

.field private toolbar:Landroid/widget/LinearLayout;

.field private typeace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->_timer:Ljava/util/Timer;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->fontName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->typeace:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color1:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color2:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color3:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->colorf:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->a:Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->i:Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->b:Landroid/content/Intent;

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->c:Landroid/content/Intent;

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->f:Landroid/content/Intent;

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->k:Landroid/content/Intent;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->toolbar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->f:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$10(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear16:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->a:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$12(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear17:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear18:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/abdullah/ahmed/EnableActivity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity;->timer:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$16(Lcom/abdullah/ahmed/EnableActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$17(Lcom/abdullah/ahmed/EnableActivity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->timer:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->k:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->b:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->c:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$6(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$7(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 99
    sget v0, Lcom/abdullah/ahmed/R$id;->linear1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear1:Landroid/widget/LinearLayout;

    .line 100
    sget v0, Lcom/abdullah/ahmed/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->toolbar:Landroid/widget/LinearLayout;

    .line 101
    sget v0, Lcom/abdullah/ahmed/R$id;->linear19:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear19:Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcom/abdullah/ahmed/R$id;->linear13:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear13:Landroid/widget/LinearLayout;

    .line 103
    sget v0, Lcom/abdullah/ahmed/R$id;->lin16:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin16:Landroid/widget/LinearLayout;

    .line 104
    sget v0, Lcom/abdullah/ahmed/R$id;->im4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im4:Landroid/widget/ImageView;

    .line 105
    sget v0, Lcom/abdullah/ahmed/R$id;->linear15:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear15:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/abdullah/ahmed/R$id;->im6:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im6:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/abdullah/ahmed/R$id;->im1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im1:Landroid/widget/ImageView;

    .line 108
    sget v0, Lcom/abdullah/ahmed/R$id;->textview7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->textview7:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/abdullah/ahmed/R$id;->linear5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear5:Landroid/widget/LinearLayout;

    .line 110
    sget v0, Lcom/abdullah/ahmed/R$id;->linear7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear7:Landroid/widget/LinearLayout;

    .line 111
    sget v0, Lcom/abdullah/ahmed/R$id;->lin1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin1:Landroid/widget/LinearLayout;

    .line 112
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->imageview9:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/abdullah/ahmed/R$id;->textview5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->textview5:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/abdullah/ahmed/R$id;->lin2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin2:Landroid/widget/LinearLayout;

    .line 115
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->imageview10:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/abdullah/ahmed/R$id;->textview8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->textview8:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/abdullah/ahmed/R$id;->linear14:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear14:Landroid/widget/LinearLayout;

    .line 118
    sget v0, Lcom/abdullah/ahmed/R$id;->lin3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin3:Landroid/widget/LinearLayout;

    .line 119
    sget v0, Lcom/abdullah/ahmed/R$id;->im5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im5:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/abdullah/ahmed/R$id;->textview6:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->textview6:Landroid/widget/TextView;

    .line 121
    sget v0, Lcom/abdullah/ahmed/R$id;->linear16:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear16:Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/abdullah/ahmed/R$id;->linear17:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear17:Landroid/widget/LinearLayout;

    .line 123
    sget v0, Lcom/abdullah/ahmed/R$id;->linear18:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear18:Landroid/widget/LinearLayout;

    .line 124
    sget v0, Lcom/abdullah/ahmed/R$id;->im7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im7:Landroid/widget/ImageView;

    .line 125
    sget v0, Lcom/abdullah/ahmed/R$id;->im9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im9:Landroid/widget/ImageView;

    .line 126
    sget v0, Lcom/abdullah/ahmed/R$id;->im8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im8:Landroid/widget/ImageView;

    .line 127
    const-string v0, "color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/abdullah/ahmed/EnableActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    .line 129
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->toolbar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$1;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im4:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$2;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$2;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->im6:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$3;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$4;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$4;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$5;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$5;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin3:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$6;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$6;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear16:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$7;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$7;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear17:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$8;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$8;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear18:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$9;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$9;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    return-void
.end method

.method private initializeLogic()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color1"

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->color1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color2"

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->color2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color3"

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->color3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "colorf"

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->colorf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 485
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->_them()V

    .line 494
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color1:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color2:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color3"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color3:Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "colorf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->colorf:Ljava/lang/String;

    .line 492
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->_them()V

    goto :goto_0
.end method

.method private overrideFonts(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 516
    :try_start_0
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 517
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 518
    check-cast p2, Landroid/view/ViewGroup;

    .line 519
    const/4 v1, 0x0

    .line 520
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 519
    if-lt v1, v2, :cond_1

    .line 550
    :cond_0
    :goto_1
    return-void

    .line 522
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 523
    invoke-direct {p0, p1, v2}, Lcom/abdullah/ahmed/EnableActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    :cond_2
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 528
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 529
    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 548
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getApplicationContext()Landroid/content/Context;

    goto :goto_1

    .line 532
    :cond_3
    :try_start_1
    instance-of v1, p2, Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 533
    move-object v0, p2

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 534
    check-cast p2, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 537
    :cond_4
    instance-of v1, p2, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 538
    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 539
    check-cast p2, Landroid/widget/Button;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->colorf:Ljava/lang/String;

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
    .line 758
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

    .line 759
    return-void
.end method

.method public _animation()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 583
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->lin3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear16:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear17:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear18:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$11;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$11;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->timer:Ljava/util/TimerTask;

    .line 741
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 742
    return-void
.end method

.method public _changeActivityFont(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 509
    const-string v0, "fonts/"

    const-string v1, ".ttf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->fontName:Ljava/lang/String;

    .line 510
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 511
    return-void
.end method

.method public _radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V
    .locals 7

    .prologue
    .line 746
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 747
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 746
    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 750
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

    .line 752
    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 753
    const/high16 v2, 0x40e00000    # 7.0f

    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 754
    return-void
.end method

.method public _setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 4

    .prologue
    .line 768
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

    .line 769
    double-to-int v0, p6

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 770
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 771
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 773
    :cond_0
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 774
    return-void
.end method

.method public _them()V
    .locals 15

    .prologue
    .line 554
    const-string v0, "al8dar_font"

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->_changeActivityFont(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear1:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v2, "color3"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v3, "color3"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/abdullah/ahmed/EnableActivity;->_GradientDrawable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->lin1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/EnableActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/EnableActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->lin2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/EnableActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/EnableActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->lin3:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/abdullah/ahmed/EnableActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/EnableActivity;->color2:Ljava/lang/String;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-string v8, "#D86BBA"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/abdullah/ahmed/EnableActivity;->_setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 560
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 561
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 562
    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->color2:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 564
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/EnableActivity;->toolbar:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/EnableActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 565
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->linear1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$10;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$10;-><init>(Lcom/abdullah/ahmed/EnableActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->timer:Ljava/util/TimerTask;

    .line 578
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 579
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
    .line 804
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 805
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 806
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 810
    return-object v1

    .line 807
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 808
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getResources()Landroid/content/res/Resources;

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
    .line 825
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getResources()Landroid/content/res/Resources;

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
    .line 820
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getResources()Landroid/content/res/Resources;

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
    .line 784
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 785
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 786
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 791
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 793
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 798
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 799
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
    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 506
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget v0, Lcom/abdullah/ahmed/R$layout;->enable:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/EnableActivity;->setContentView(I)V

    .line 93
    invoke-direct {p0, p1}, Lcom/abdullah/ahmed/EnableActivity;->initialize(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/abdullah/ahmed/EnableActivity;->initializeLogic()V

    .line 95
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/abdullah/ahmed/EnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 780
    return-void
.end method
