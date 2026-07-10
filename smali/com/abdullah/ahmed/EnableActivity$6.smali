.class Lcom/abdullah/ahmed/EnableActivity$6;
.super Ljava/lang/Object;
.source "EnableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/EnableActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/EnableActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$6;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    .line 431
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    const v8, 0x3f333333    # 0.7f

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 432
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 433
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 434
    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$6;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity;->access$9(Lcom/abdullah/ahmed/EnableActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const-string v2, "\u0627\u065a\u0647\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0644\u0656\u0627  \u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u06aa\u0670\u0656  \u064a\u0627\u065a\u0641\u0656\u062e\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0645  \u0641\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u064a  \u06aa\u0670\u0656\u064a\u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0648\u0631\u062f \u060f\u0640\u0650\u0640\u0650\u0640\u0650\u0640\u0650\u0640\u0650\u0628\u0648\u062f\n\n\n\u0627\u0641\u0656\u062e\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0645  \u06aa\u0670\u0656\u064a\u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0648\u065b\u0631\u062f  \u0641\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u064a  \u0627\u065a\u0644\u0645\u062c\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0627\u0644\n\n\n\u062a\u0627\u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u060f  \u0642\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0646\u0650\u0627\u062a\u064a  \u0644\u062a\u062d\u0645\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u064a\u0644\u0656  \u0627\u062e\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0631  \u0627\u0635\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u062f\u0627\u0631\n\nhttps://t.me/jnssghb"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "AH MODS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$6;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    const-string v2, "*Share With*"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/abdullah/ahmed/EnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method
