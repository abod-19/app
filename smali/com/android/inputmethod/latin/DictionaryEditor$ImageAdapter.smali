.class public Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DictionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/DictionaryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/inputmethod/latin/DictionaryEditor;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/DictionaryEditor;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1038
    iput-object p2, p0, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;->mContext:Landroid/content/Context;

    .line 1039
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v0, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->ms:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v0, v0, Lcom/android/inputmethod/latin/DictionaryEditor;->ms:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1035
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1044
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1045
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/inputmethod/latin/DictionaryEditor$ImageAdapter;->this$0:Lcom/android/inputmethod/latin/DictionaryEditor;

    iget-object v1, v1, Lcom/android/inputmethod/latin/DictionaryEditor;->ms:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1046
    return-object v0
.end method
