.class Lcom/android/inputmethod/latin/DictionaryEditor$9;
.super Ljava/lang/Object;
.source "DictionaryEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;->isPaidVersionIsntalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$9;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    .line 4327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4331
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$9;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$14(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V

    .line 4332
    iget-object v3, p0, Lcom/android/inputmethod/latin/DictionaryEditor$9;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/DictionaryEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4334
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 4336
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4342
    return-void

    .line 4336
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 4337
    .local v0, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "inputmethod.latin.perfectkeyboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4339
    iget-object v4, p0, Lcom/android/inputmethod/latin/DictionaryEditor$9;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/DictionaryEditor;->access$14(Lcom/android/inputmethod/latin/DictionaryEditor;Z)V

    goto :goto_0
.end method
