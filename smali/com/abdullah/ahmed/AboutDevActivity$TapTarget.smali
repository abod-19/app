.class Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
.super Landroid/app/Activity;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TapTarget"
.end annotation


# instance fields
.field bounds:Landroid/graphics/Rect;

.field cancelable:Z

.field final description:Ljava/lang/CharSequence;

.field descriptionTextAlpha:F

.field private descriptionTextColor:Ljava/lang/Integer;

.field private descriptionTextColorRes:I

.field private descriptionTextDimen:I

.field private descriptionTextSize:I

.field descriptionTypeface:Landroid/graphics/Typeface;

.field private dimColor:Ljava/lang/Integer;

.field private dimColorRes:I

.field drawShadow:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field id:I

.field outerCircleAlpha:F

.field private outerCircleColor:Ljava/lang/Integer;

.field private outerCircleColorRes:I

.field private targetCircleColor:Ljava/lang/Integer;

.field private targetCircleColorRes:I

.field targetRadius:I

.field tintTarget:Z

.field final title:Ljava/lang/CharSequence;

.field private titleTextColor:Ljava/lang/Integer;

.field private titleTextColorRes:I

.field private titleTextDimen:I

.field private titleTextSize:I

.field titleTypeface:Landroid/graphics/Typeface;

.field transparentTarget:Z


# direct methods
.method protected constructor <init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 880
    invoke-direct {p0, p2, p3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 881
    if-nez p1, :cond_0

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass null bounds or title"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_0
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->bounds:Landroid/graphics/Rect;

    .line 885
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 886
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 837
    const v0, 0x3f75c28f    # 0.96f

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleAlpha:F

    .line 838
    const/16 v0, 0x2c

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetRadius:I

    .line 845
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColorRes:I

    .line 846
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColorRes:I

    .line 847
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColorRes:I

    .line 848
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColorRes:I

    .line 849
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColorRes:I

    .line 851
    iput-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColor:Ljava/lang/Integer;

    .line 852
    iput-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColor:Ljava/lang/Integer;

    .line 853
    iput-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColor:Ljava/lang/Integer;

    .line 854
    iput-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColor:Ljava/lang/Integer;

    .line 855
    iput-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    .line 857
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextDimen:I

    .line 858
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextDimen:I

    .line 859
    const/16 v0, 0x14

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextSize:I

    .line 860
    const/16 v0, 0x12

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextSize:I

    .line 861
    iput v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->id:I

    .line 862
    iput-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->drawShadow:Z

    .line 863
    iput-boolean v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->cancelable:Z

    .line 864
    iput-boolean v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->tintTarget:Z

    .line 865
    iput-boolean v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->transparentTarget:Z

    .line 866
    const v0, 0x3f0a3d71    # 0.54f

    iput v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextAlpha:F

    .line 887
    if-nez p1, :cond_0

    .line 888
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass null title"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_0
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->title:Ljava/lang/CharSequence;

    .line 891
    iput-object p2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->description:Ljava/lang/CharSequence;

    .line 892
    return-void
.end method

.method private colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1062
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1063
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 1064
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1067
    :cond_0
    return-object p2
.end method

.method private dimenOrSize(Landroid/content/Context;II)I
    .locals 1

    .prologue
    .line 1070
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1071
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1073
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/abdullah/ahmed/AboutDevActivity$UiUtil;->sp(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    return-object v0
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 877
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;-><init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    return-object v0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 871
    new-instance v0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Requesting bounds that are not set! Make sure your target is ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public cancelable(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->cancelable:Z

    .line 1001
    return-object p0
.end method

.method public descriptionTextAlpha(F)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 3

    .prologue
    .line 977
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given an invalid alpha value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_1
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextAlpha:F

    .line 981
    return-object p0
.end method

.method public descriptionTextColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 939
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColorRes:I

    .line 940
    return-object p0
.end method

.method public descriptionTextColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 943
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    .line 944
    return-object p0
.end method

.method descriptionTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public descriptionTextDimen(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 984
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextDimen:I

    .line 985
    return-object p0
.end method

.method public descriptionTextSize(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 2

    .prologue
    .line 968
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given negative text size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_0
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextSize:I

    .line 970
    return-object p0
.end method

.method descriptionTextSizePx(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 1058
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextSize:I

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextDimen:I

    invoke-direct {p0, p1, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimenOrSize(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public descriptionTypeface(Landroid/graphics/Typeface;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 2

    .prologue
    .line 958
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a null typeface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    .line 960
    return-object p0
.end method

.method public dimColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 988
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColorRes:I

    .line 989
    return-object p0
.end method

.method public dimColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 992
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColor:Ljava/lang/Integer;

    .line 993
    return-object p0
.end method

.method dimColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public drawShadow(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 996
    iput-boolean p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->drawShadow:Z

    .line 997
    return-object p0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon(Landroid/graphics/drawable/Drawable;Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    move-result-object v0

    return-object v0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1011
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use null drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    .line 1013
    if-nez p2, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1016
    :cond_1
    return-object p0
.end method

.method public id()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->id:I

    return v0
.end method

.method public id(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 1019
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->id:I

    .line 1020
    return-object p0
.end method

.method public onReady(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1030
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1031
    return-void
.end method

.method public outerCircleAlpha(F)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 3

    .prologue
    .line 906
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 907
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given an invalid alpha value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_1
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleAlpha:F

    .line 910
    return-object p0
.end method

.method public outerCircleColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 898
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColorRes:I

    .line 899
    return-object p0
.end method

.method public outerCircleColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColor:Ljava/lang/Integer;

    .line 903
    return-object p0
.end method

.method outerCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->outerCircleColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public targetCircleColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 913
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColorRes:I

    .line 914
    return-object p0
.end method

.method public targetCircleColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 917
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColor:Ljava/lang/Integer;

    .line 918
    return-object p0
.end method

.method targetCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetCircleColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public targetRadius(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 1023
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->targetRadius:I

    .line 1024
    return-object p0
.end method

.method public textColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 921
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColorRes:I

    .line 922
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColorRes:I

    .line 923
    return-object p0
.end method

.method public textColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 926
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColor:Ljava/lang/Integer;

    .line 927
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTextColor:Ljava/lang/Integer;

    .line 928
    return-object p0
.end method

.method public textTypeface(Landroid/graphics/Typeface;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 2

    .prologue
    .line 947
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a null typeface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_0
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    .line 949
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    .line 950
    return-object p0
.end method

.method public tintTarget(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 1004
    iput-boolean p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->tintTarget:Z

    .line 1005
    return-object p0
.end method

.method public titleTextColor(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 931
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColorRes:I

    .line 932
    return-object p0
.end method

.method public titleTextColorInt(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 1

    .prologue
    .line 935
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColor:Ljava/lang/Integer;

    .line 936
    return-object p0
.end method

.method titleTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColor:Ljava/lang/Integer;

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextColorRes:I

    invoke-direct {p0, p1, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->colorResOrInt(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public titleTextDimen(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 973
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextDimen:I

    .line 974
    return-object p0
.end method

.method public titleTextSize(I)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 2

    .prologue
    .line 963
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given negative text size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_0
    iput p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextSize:I

    .line 965
    return-object p0
.end method

.method titleTextSizePx(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 1055
    iget v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextSize:I

    iget v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTextDimen:I

    invoke-direct {p0, p1, v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->dimenOrSize(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public titleTypeface(Landroid/graphics/Typeface;)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 2

    .prologue
    .line 953
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a null typeface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_0
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    .line 955
    return-object p0
.end method

.method public transparentTarget(Z)Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
    .locals 0

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->transparentTarget:Z

    .line 895
    return-object p0
.end method
