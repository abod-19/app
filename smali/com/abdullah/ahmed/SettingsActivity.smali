.class public Lcom/abdullah/ahmed/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


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

.field private im2:Landroid/widget/ImageView;

.field private im3:Landroid/widget/ImageView;

.field private im4:Landroid/widget/ImageView;

.field private im8:Landroid/widget/ImageView;

.field private imageview1:Landroid/widget/ImageView;

.field private imageview14:Landroid/widget/ImageView;

.field private imageview15:Landroid/widget/ImageView;

.field private imageview16:Landroid/widget/ImageView;

.field private imageview17:Landroid/widget/ImageView;

.field private imageview18:Landroid/widget/ImageView;

.field private imageview19:Landroid/widget/ImageView;

.field private imageview2:Landroid/widget/ImageView;

.field private k:Landroid/content/Intent;

.field private lin1:Landroid/widget/LinearLayout;

.field private lin2:Landroid/widget/LinearLayout;

.field private lin3:Landroid/widget/LinearLayout;

.field private lin4:Landroid/widget/LinearLayout;

.field private lin5:Landroid/widget/LinearLayout;

.field private lin6:Landroid/widget/LinearLayout;

.field private lin7:Landroid/widget/LinearLayout;

.field private lin8:Landroid/widget/LinearLayout;

.field private lin9:Landroid/widget/LinearLayout;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear16:Landroid/widget/LinearLayout;

.field private linear17:Landroid/widget/LinearLayout;

.field private linear18:Landroid/widget/LinearLayout;

.field private linear19:Landroid/widget/LinearLayout;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear20:Landroid/widget/LinearLayout;

.field private linear22:Landroid/widget/LinearLayout;

.field private linear23:Landroid/widget/LinearLayout;

.field private linear24:Landroid/widget/LinearLayout;

.field private linear27:Landroid/widget/LinearLayout;

.field private linear28:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;

.field private linear30:Landroid/widget/LinearLayout;

.field private linear31:Landroid/widget/LinearLayout;

.field private linear32:Landroid/widget/LinearLayout;

.field private linear33:Landroid/widget/LinearLayout;

.field private linear34:Landroid/widget/LinearLayout;

.field private linear4:Landroid/widget/LinearLayout;

.field private textview1:Landroid/widget/TextView;

.field private textview10:Landroid/widget/TextView;

.field private textview11:Landroid/widget/TextView;

.field private textview12:Landroid/widget/TextView;

.field private textview13:Landroid/widget/TextView;

.field private textview14:Landroid/widget/TextView;

.field private textview2:Landroid/widget/TextView;

.field private textview5:Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->_timer:Ljava/util/Timer;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color3:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->fontName:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->typeace:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->colorf:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->i:Landroid/content/Intent;

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->f:Landroid/content/Intent;

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->a:Landroid/content/Intent;

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->b:Landroid/content/Intent;

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->c:Landroid/content/Intent;

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->k:Landroid/content/Intent;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->toolbar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin4:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin5:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin6:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin7:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin8:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin9:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/abdullah/ahmed/SettingsActivity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/abdullah/ahmed/SettingsActivity;->timer:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic access$18(Lcom/abdullah/ahmed/SettingsActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$19(Lcom/abdullah/ahmed/SettingsActivity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->timer:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$20(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->f:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->k:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->b:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->c:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$7(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->a:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$9(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    sget v0, Lcom/abdullah/ahmed/R$id;->linear1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear1:Landroid/widget/LinearLayout;

    .line 126
    sget v0, Lcom/abdullah/ahmed/R$id;->vscroll1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->vscroll1:Landroid/widget/ScrollView;

    .line 127
    sget v0, Lcom/abdullah/ahmed/R$id;->linear2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear2:Landroid/widget/LinearLayout;

    .line 128
    sget v0, Lcom/abdullah/ahmed/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->toolbar:Landroid/widget/LinearLayout;

    .line 129
    sget v0, Lcom/abdullah/ahmed/R$id;->linear16:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear16:Landroid/widget/LinearLayout;

    .line 130
    sget v0, Lcom/abdullah/ahmed/R$id;->linear19:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear19:Landroid/widget/LinearLayout;

    .line 131
    sget v0, Lcom/abdullah/ahmed/R$id;->linear22:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear22:Landroid/widget/LinearLayout;

    .line 132
    sget v0, Lcom/abdullah/ahmed/R$id;->linear27:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear27:Landroid/widget/LinearLayout;

    .line 133
    sget v0, Lcom/abdullah/ahmed/R$id;->linear30:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear30:Landroid/widget/LinearLayout;

    .line 134
    sget v0, Lcom/abdullah/ahmed/R$id;->linear33:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear33:Landroid/widget/LinearLayout;

    .line 135
    sget v0, Lcom/abdullah/ahmed/R$id;->linear4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear4:Landroid/widget/LinearLayout;

    .line 136
    sget v0, Lcom/abdullah/ahmed/R$id;->linear3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear3:Landroid/widget/LinearLayout;

    .line 137
    sget v0, Lcom/abdullah/ahmed/R$id;->im2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im2:Landroid/widget/ImageView;

    .line 138
    sget v0, Lcom/abdullah/ahmed/R$id;->im3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im3:Landroid/widget/ImageView;

    .line 139
    sget v0, Lcom/abdullah/ahmed/R$id;->im4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im4:Landroid/widget/ImageView;

    .line 140
    sget v0, Lcom/abdullah/ahmed/R$id;->im1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im1:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/abdullah/ahmed/R$id;->textview1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview1:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/abdullah/ahmed/R$id;->linear17:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear17:Landroid/widget/LinearLayout;

    .line 143
    sget v0, Lcom/abdullah/ahmed/R$id;->linear18:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear18:Landroid/widget/LinearLayout;

    .line 144
    sget v0, Lcom/abdullah/ahmed/R$id;->lin1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin1:Landroid/widget/LinearLayout;

    .line 145
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview1:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview1:Landroid/widget/ImageView;

    .line 146
    sget v0, Lcom/abdullah/ahmed/R$id;->textview8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview8:Landroid/widget/TextView;

    .line 147
    sget v0, Lcom/abdullah/ahmed/R$id;->lin2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin2:Landroid/widget/LinearLayout;

    .line 148
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview2:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/abdullah/ahmed/R$id;->textview2:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview2:Landroid/widget/TextView;

    .line 150
    sget v0, Lcom/abdullah/ahmed/R$id;->linear20:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear20:Landroid/widget/LinearLayout;

    .line 151
    sget v0, Lcom/abdullah/ahmed/R$id;->lin3:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin3:Landroid/widget/LinearLayout;

    .line 152
    sget v0, Lcom/abdullah/ahmed/R$id;->im8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im8:Landroid/widget/ImageView;

    .line 153
    sget v0, Lcom/abdullah/ahmed/R$id;->textview5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview5:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/abdullah/ahmed/R$id;->linear23:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear23:Landroid/widget/LinearLayout;

    .line 155
    sget v0, Lcom/abdullah/ahmed/R$id;->linear24:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear24:Landroid/widget/LinearLayout;

    .line 156
    sget v0, Lcom/abdullah/ahmed/R$id;->lin4:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin4:Landroid/widget/LinearLayout;

    .line 157
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview14:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview14:Landroid/widget/ImageView;

    .line 158
    sget v0, Lcom/abdullah/ahmed/R$id;->textview9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview9:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/abdullah/ahmed/R$id;->lin5:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin5:Landroid/widget/LinearLayout;

    .line 160
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview15:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview15:Landroid/widget/ImageView;

    .line 161
    sget v0, Lcom/abdullah/ahmed/R$id;->textview10:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview10:Landroid/widget/TextView;

    .line 162
    sget v0, Lcom/abdullah/ahmed/R$id;->linear28:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear28:Landroid/widget/LinearLayout;

    .line 163
    sget v0, Lcom/abdullah/ahmed/R$id;->lin6:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin6:Landroid/widget/LinearLayout;

    .line 164
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview16:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview16:Landroid/widget/ImageView;

    .line 165
    sget v0, Lcom/abdullah/ahmed/R$id;->textview11:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview11:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/abdullah/ahmed/R$id;->linear31:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear31:Landroid/widget/LinearLayout;

    .line 167
    sget v0, Lcom/abdullah/ahmed/R$id;->linear32:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear32:Landroid/widget/LinearLayout;

    .line 168
    sget v0, Lcom/abdullah/ahmed/R$id;->lin7:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin7:Landroid/widget/LinearLayout;

    .line 169
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview17:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview17:Landroid/widget/ImageView;

    .line 170
    sget v0, Lcom/abdullah/ahmed/R$id;->textview12:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview12:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/abdullah/ahmed/R$id;->lin8:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin8:Landroid/widget/LinearLayout;

    .line 172
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview18:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview18:Landroid/widget/ImageView;

    .line 173
    sget v0, Lcom/abdullah/ahmed/R$id;->textview13:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview13:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/abdullah/ahmed/R$id;->linear34:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear34:Landroid/widget/LinearLayout;

    .line 175
    sget v0, Lcom/abdullah/ahmed/R$id;->lin9:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin9:Landroid/widget/LinearLayout;

    .line 176
    sget v0, Lcom/abdullah/ahmed/R$id;->imageview19:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->imageview19:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/abdullah/ahmed/R$id;->textview14:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->textview14:Landroid/widget/TextView;

    .line 178
    const-string v0, "color"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/abdullah/ahmed/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    .line 180
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->toolbar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$1;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im2:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$2;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im3:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$3;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->im4:Landroid/widget/ImageView;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$4;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$5;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$6;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin3:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$7;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin4:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$8;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin5:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$9;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$9;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin6:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$10;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$10;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin7:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$11;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$11;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin8:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$12;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin9:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$13;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$13;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    return-void
.end method

.method private initializeLogic()V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color1"

    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color2"

    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color3"

    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 640
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "colorf"

    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->colorf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 641
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->_them()V

    .line 650
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color3"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color3:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "colorf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->colorf:Ljava/lang/String;

    .line 648
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->_them()V

    goto :goto_0
.end method

.method private overrideFonts(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 951
    :try_start_0
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->fontName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 952
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 953
    check-cast p2, Landroid/view/ViewGroup;

    .line 954
    const/4 v1, 0x0

    .line 955
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 954
    if-lt v1, v2, :cond_1

    .line 985
    :cond_0
    :goto_1
    return-void

    .line 957
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 958
    invoke-direct {p0, p1, v2}, Lcom/abdullah/ahmed/SettingsActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    :cond_2
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 963
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 964
    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 983
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    goto :goto_1

    .line 967
    :cond_3
    :try_start_1
    instance-of v1, p2, Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 968
    move-object v0, p2

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 969
    check-cast p2, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity;->colorf:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 972
    :cond_4
    instance-of v1, p2, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 973
    move-object v0, p2

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 974
    check-cast p2, Landroid/widget/Button;

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity;->colorf:Ljava/lang/String;

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
    .line 989
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

    .line 990
    return-void
.end method

.method public _animation()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 665
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->toolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    new-instance v0, Lcom/abdullah/ahmed/SettingsActivity$14;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/SettingsActivity$14;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->timer:Ljava/util/TimerTask;

    .line 892
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 893
    return-void
.end method

.method public _changeActivityFont(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 944
    const-string v0, "fonts/"

    const-string v1, ".ttf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->fontName:Ljava/lang/String;

    .line 945
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 946
    return-void
.end method

.method public _radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V
    .locals 7

    .prologue
    .line 897
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 898
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 897
    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 901
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

    .line 903
    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 904
    const/high16 v2, 0x40e00000    # 7.0f

    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 905
    return-void
.end method

.method public _setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)V
    .locals 4

    .prologue
    .line 999
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

    .line 1000
    double-to-int v0, p6

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 1001
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1002
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    .line 1004
    :cond_0
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 1005
    return-void
.end method

.method public _them()V
    .locals 15

    .prologue
    .line 909
    const-string v0, "al8dar_font"

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->_changeActivityFont(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear1:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v2, "color3"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v3, "color3"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/abdullah/ahmed/SettingsActivity;->_GradientDrawable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/16 v12, 0x0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin1:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 912
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin2:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 913
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin3:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 914
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/16 v12, 0x0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin4:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 915
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin5:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 916
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin6:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 917
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/16 v12, 0x0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin7:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 918
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin8:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 919
    iget-object v2, p0, Lcom/abdullah/ahmed/SettingsActivity;->color1:Ljava/lang/String;

    iget-object v3, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->lin9:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 920
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 921
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 922
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 923
    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity;->color2:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 925
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->color:Landroid/content/SharedPreferences;

    const-string v1, "color2"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    iget-object v14, p0, Lcom/abdullah/ahmed/SettingsActivity;->toolbar:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-virtual/range {v1 .. v14}, Lcom/abdullah/ahmed/SettingsActivity;->_radius_4(Ljava/lang/String;Ljava/lang/String;DDDDDLandroid/view/View;)V

    .line 926
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->linear1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 927
    new-instance v0, Lcom/abdullah/ahmed/SettingsActivity$15;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/SettingsActivity$15;-><init>(Lcom/abdullah/ahmed/SettingsActivity;)V

    iput-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->timer:Ljava/util/TimerTask;

    .line 939
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity;->timer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 940
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
    .line 1035
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1037
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 1041
    return-object v1

    .line 1038
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1039
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1046
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getResources()Landroid/content/res/Resources;

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
    .line 1056
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getResources()Landroid/content/res/Resources;

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
    .line 1051
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getResources()Landroid/content/res/Resources;

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
    .line 1015
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1016
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1017
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1022
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1023
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1024
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1029
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1030
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
    .line 655
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 662
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v0, Lcom/abdullah/ahmed/R$layout;->settings:I

    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/SettingsActivity;->setContentView(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/abdullah/ahmed/SettingsActivity;->initialize(Landroid/os/Bundle;)V

    .line 120
    invoke-direct {p0}, Lcom/abdullah/ahmed/SettingsActivity;->initializeLogic()V

    .line 121
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/abdullah/ahmed/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1011
    return-void
.end method
