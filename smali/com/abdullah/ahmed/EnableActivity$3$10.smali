.class Lcom/abdullah/ahmed/EnableActivity$3$10;
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
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color1"

    const-string v2, "#FF101820"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 382
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color2"

    const-string v2, "#FF101820"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color3"

    const-string v2, "#FF203040"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$5(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "colorf"

    const-string v2, "#1565C0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity;->access$6(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/abdullah/ahmed/EnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/abdullah/ahmed/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/EnableActivity;->access$6(Lcom/abdullah/ahmed/EnableActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/EnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 387
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3$10;->this$1:Lcom/abdullah/ahmed/EnableActivity$3;

    invoke-static {v0}, Lcom/abdullah/ahmed/EnableActivity$3;->access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/EnableActivity;->finish()V

    .line 388
    return-void
.end method
