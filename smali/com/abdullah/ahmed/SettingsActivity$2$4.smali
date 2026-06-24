.class Lcom/abdullah/ahmed/SettingsActivity$2$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/SettingsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/SettingsActivity$2;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/SettingsActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity;->access$1(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color1"

    const-string v2, "#FFFFFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity;->access$1(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color2"

    const-string v2, "#FFFFFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity;->access$1(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color3"

    const-string v2, "#F5F5F5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity;->access$1(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "colorf"

    const-string v2, "#000000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity;->access$2(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v1}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/abdullah/ahmed/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/abdullah/ahmed/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v1}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/abdullah/ahmed/SettingsActivity;->access$2(Lcom/abdullah/ahmed/SettingsActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$2$4;->this$1:Lcom/abdullah/ahmed/SettingsActivity$2;

    invoke-static {v0}, Lcom/abdullah/ahmed/SettingsActivity$2;->access$0(Lcom/abdullah/ahmed/SettingsActivity$2;)Lcom/abdullah/ahmed/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/abdullah/ahmed/SettingsActivity;->finish()V

    .line 312
    return-void
.end method
