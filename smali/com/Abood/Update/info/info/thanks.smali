.class public Lcom/Abood/Update/info/info/thanks;
.super Landroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public ah_tele(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/inputmethod/latin/BackupPro$5;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/Abood/Update/info/info/thanks;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public ah_wa(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/inputmethod/latin/BackupPro$3;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/Abood/Update/info/info/thanks;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public ah_you(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/inputmethod/latin/BackupPro$4;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/Abood/Update/info/info/thanks;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public close(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/Abood/Update/info/info/thanks;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/Abood/Update/info/info/thanks;->requestWindowFeature(I)Z

    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/Abood/Update/info/info/thanks;->setContentView(I)V

    return-void
.end method
