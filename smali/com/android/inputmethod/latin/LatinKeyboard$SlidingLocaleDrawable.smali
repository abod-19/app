.class Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingLocaleDrawable"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiffX:I

.field private mDiffY:I

.field private final mHeight:I

.field private mHitThresholdX:Z

.field private mHitThresholdY:Z

.field private final mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMiddleX:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLanguage:Ljava/lang/String;

.field private final mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThresholdX:I

.field private final mThresholdY:I

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1267
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1268
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$0(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 1269
    iput p3, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 1270
    iput p4, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 1271
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 1272
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x1030044

    const/16 v2, 0x12

    invoke-static {p1, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$1(Lcom/android/inputmethod/latin/LatinKeyboard;II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1273
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$2(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1274
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1275
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1276
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1277
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    .line 1279
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$2(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1278
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 1281
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$2(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1280
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1282
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$3(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mThresholdX:I

    .line 1283
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$3(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mThresholdY:I

    .line 1284
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;I)V
    .locals 0

    .prologue
    .line 1286
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->setDiffX(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;I)V
    .locals 0

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->setDiffY(I)V

    return-void
.end method

.method private getLanguageName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1313
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    .local v0, "Lang":Ljava/lang/String;
    const-string v1, "\u0639\u0631\u0628\u064a."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/inputmethod/latin/DictionaryEditor;->mRTLEnabled:Z

    if-eqz v1, :cond_0

    .line 1315
    const-string v0, "\u0639\u0631\u0628\u064a."

    .line 1316
    :cond_0
    return-object v0
.end method

.method private setDiffX(I)V
    .locals 2
    .param p1, "diff"    # I

    .prologue
    .line 1287
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThresholdX:Z

    .line 1289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1297
    :goto_0
    return-void

    .line 1292
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffX:I

    .line 1293
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffX:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffX:I

    .line 1294
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffX:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffX:I

    .line 1295
    :cond_2
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mThresholdX:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThresholdX:Z

    .line 1296
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method private setDiffY(I)V
    .locals 2
    .param p1, "diff"    # I

    .prologue
    .line 1300
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThresholdY:Z

    .line 1302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1310
    :goto_0
    return-void

    .line 1305
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffY:I

    .line 1306
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffY:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffY:I

    .line 1307
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffY:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffY:I

    .line 1308
    :cond_2
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mThresholdY:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThresholdY:Z

    .line 1309
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v12, 0x7f0a0009

    const/4 v11, 0x0

    .line 1321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1322
    iget-boolean v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThresholdX:Z

    if-eqz v8, :cond_1

    .line 1323
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 1324
    .local v5, "paint":Landroid/graphics/Paint;
    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 1325
    .local v7, "width":I
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 1326
    .local v2, "height":I
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffX:I

    .line 1327
    .local v1, "diff":I
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 1328
    .local v3, "lArrow":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1329
    .local v6, "rArrow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v11, v11, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1330
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 1331
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$4(Lcom/android/inputmethod/latin/LatinKeyboard;)Lcom/android/inputmethod/latin/LanguageSwitcher;

    move-result-object v4

    .line 1332
    .local v4, "languageSwitcher":Lcom/android/inputmethod/latin/LanguageSwitcher;
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1333
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getNextInputLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 1334
    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getPrevInputLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->getLanguageName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 1338
    .end local v4    # "languageSwitcher":Lcom/android/inputmethod/latin/LanguageSwitcher;
    :cond_0
    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    int-to-float v8, v8

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float v0, v8, v9

    .line 1339
    .local v0, "baseline":F
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$2(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1340
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1341
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    div-int/lit8 v9, v7, 0x2

    sub-int v9, v1, v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1342
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    add-int v9, v1, v7

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1344
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-static {v8, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$0(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 1345
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v7, v8

    .line 1346
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 1345
    invoke-virtual {v6, v8, v11, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1347
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1348
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1350
    .end local v0    # "baseline":F
    .end local v1    # "diff":I
    .end local v2    # "height":I
    .end local v3    # "lArrow":Landroid/graphics/drawable/Drawable;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "rArrow":Landroid/graphics/drawable/Drawable;
    .end local v7    # "width":I
    :cond_1
    iget-boolean v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHitThresholdY:Z

    if-eqz v8, :cond_2

    .line 1351
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 1352
    .restart local v5    # "paint":Landroid/graphics/Paint;
    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 1353
    .restart local v7    # "width":I
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 1354
    .restart local v2    # "height":I
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mDiffY:I

    .line 1355
    .restart local v1    # "diff":I
    invoke-virtual {p1, v11, v11, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1359
    int-to-float v8, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1360
    .local v0, "baseline":Ljava/lang/Float;
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboard;->access$2(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1361
    sget v8, Lcom/android/inputmethod/latin/DictionaryEditor;->mEnableCursorsMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1363
    sget-boolean v8, Lcom/android/inputmethod/latin/LatinKeyboard;->mode_arrows:Z

    if-eqz v8, :cond_4

    .line 1365
    const-string v8, "\u2190\u2191\u2193\u2192"

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1374
    .end local v0    # "baseline":Ljava/lang/Float;
    .end local v1    # "diff":I
    .end local v2    # "height":I
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "width":I
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 1375
    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1376
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1378
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1379
    return-void

    .line 1369
    .restart local v0    # "baseline":Ljava/lang/Float;
    .restart local v1    # "diff":I
    .restart local v2    # "height":I
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "width":I
    :cond_4
    const-string v8, "\u2190\u2191\u2193\u2192"

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-int v10, v2, v1

    div-int/lit8 v11, v2, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1, v8, v9, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1403
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1383
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 1389
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1394
    return-void
.end method
