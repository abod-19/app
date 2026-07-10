.class public Lcom/abdullah/ahmed/SecureTextView;
.super Landroid/widget/TextView;
.source "SecureTextView.smali"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/abdullah/ahmed/SecureTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/abdullah/ahmed/SecureTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/abdullah/ahmed/SecureTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/abdullah/ahmed/SecureTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SecureText;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/abdullah/ahmed/SecureTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
