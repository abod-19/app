.class public Lcom/android/inputmethod/latin/Wordinfo$SkinData;
.super Ljava/lang/Object;
.source "LoadSkins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Wordinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinData"
.end annotation


# instance fields
.field public btn_keyboard_key:Landroid/graphics/drawable/Drawable;

.field public btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

.field public candidate_background:Landroid/graphics/drawable/Drawable;

.field public keyboard_background:Landroid/graphics/drawable/Drawable;

.field public keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

.field public shadow_color:I

.field public shadow_color2:I

.field public suggestion_color:I

.field public text_color:I

.field public text_color2:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object v0, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v0, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v0, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    .line 45
    iput v2, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->shadow_color2:I

    .line 46
    iput v1, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color2:I

    .line 47
    iput v2, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->shadow_color:I

    .line 48
    iput v1, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color:I

    .line 49
    iput v1, p0, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->suggestion_color:I

    .line 50
    return-void
.end method
