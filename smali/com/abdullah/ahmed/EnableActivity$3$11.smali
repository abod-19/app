.class Lcom/abdullah/ahmed/EnableActivity$3$11;
.super Ljava/lang/Object;
.source "EnableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/EnableActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/EnableActivity$3;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color1"

    const-string v2, "#FFC107"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color2"

    const-string v2, "#FFC107"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color3"

    const-string v2, "#FFECB3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 395
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "colorf"

    const-string v2, "#000000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$6(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/abdullah/ahmed/EnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/abdullah/ahmed/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 397
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity;->access$6(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/EnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$11;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/EnableActivity;->finish()V

    .line 399
    return-void
.end method
