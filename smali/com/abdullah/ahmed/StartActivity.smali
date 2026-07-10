.class public Lcom/abdullah/ahmed/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

.field private pendingPermissions:[Ljava/lang/String;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method

.method private dp(I)I
    .locals 2
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    int-to-float v1, p1
    mul-float v1, v1, v0
    const/high16 v0, 0x3f000000    # 0.5f
    add-float/2addr v1, v0
    float-to-int v0, v1
    return v0
.end method

.method private text(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "string"
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->getPackageName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1
    if-eqz v1, :cond
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v3
    return-object v3
    :cond
    return-object p1
.end method

.method private markCompleteAndOpenMain()V
    .locals 5
    const-string v0, "StartActivity"
    const-string v1, "markCompleteAndOpenMain: persisting setup completion and opening MainActivity"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "start_setup"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Lcom/abdullah/ahmed/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v2, "completed"
    const/4 v3, 0x1
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    new-instance v4, Landroid/content/Intent;
    const-class v0, Lcom/abdullah/ahmed/MainActivity;
    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p0, v4}, Lcom/abdullah/ahmed/StartActivity;->startActivity(Landroid/content/Intent;)V
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->finish()V
    return-void
.end method

.method private beginPermissions()V
    .locals 7
    const-string v0, "StartActivity"
    const-string v1, "beginPermissions: evaluating runtime permissions"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x17
    if-lt v0, v1, :complete
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    const-string v3, "android.permission.READ_CONTACTS"
    invoke-virtual {p0, v3}, Lcom/abdullah/ahmed/StartActivity;->checkSelfPermission(Ljava/lang/String;)I
    move-result v4
    if-nez v4, :add1
    goto :mic
    :add1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :mic
    const-string v3, "android.permission.RECORD_AUDIO"
    invoke-virtual {p0, v3}, Lcom/abdullah/ahmed/StartActivity;->checkSelfPermission(Ljava/lang/String;)I
    move-result v4
    if-nez v4, :add2
    goto :storage
    :add2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :storage
    const/16 v5, 0x1d
    if-lt v0, v5, :storage_check
    goto :notif
    :storage_check
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"
    invoke-virtual {p0, v3}, Lcom/abdullah/ahmed/StartActivity;->checkSelfPermission(Ljava/lang/String;)I
    move-result v4
    if-nez v4, :add3
    goto :notif
    :add3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :notif
    # POST_NOTIFICATIONS is intentionally skipped here because this legacy
    # app targets SDK 26; requesting it at startup on Android 13+ can block
    # the launch flow even though notifications are not needed for startup.
    :request
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    move-result v3
    if-eqz v3, :do_request
    goto :complete
    :do_request
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v3
    new-array v3, v3, [Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v3
    check-cast v3, [Ljava/lang/String;
    iput-object v3, p0, Lcom/abdullah/ahmed/StartActivity;->pendingPermissions:[Ljava/lang/String;
    const/16 v4, 0x51
    invoke-virtual {p0, v3, v4}, Lcom/abdullah/ahmed/StartActivity;->requestPermissions([Ljava/lang/String;I)V
    return-void
    :complete
    invoke-direct {p0}, Lcom/abdullah/ahmed/StartActivity;->markCompleteAndOpenMain()V
    return-void
.end method

.method private openSettingsDialog()V
    .locals 4
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const-string v1, "start_permission_required_title"
    invoke-direct {p0, v1}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const-string v1, "start_permission_required_message"
    invoke-direct {p0, v1}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/abdullah/ahmed/StartActivity$SettingsClick;
    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/StartActivity$SettingsClick;-><init>(Lcom/abdullah/ahmed/StartActivity;)V
    const-string v2, "start_open_settings"
    invoke-direct {p0, v2}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    return-void
.end method

.method public openAppSettings()V
    .locals 4
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v1, "package"
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/abdullah/ahmed/StartActivity;->startActivity(Landroid/content/Intent;)V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    invoke-direct {p0}, Lcom/abdullah/ahmed/StartActivity;->beginPermissions()V
    return-void
.end method

.method protected onResume()V
    .locals 0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    const/16 v0, 0x51
    if-ne p1, v0, :ret
    const/4 v1, 0x0
    array-length v2, p2
    :loop
    if-lt v1, v2, :check
    invoke-direct {p0}, Lcom/abdullah/ahmed/StartActivity;->markCompleteAndOpenMain()V
    return-void
    :check
    aget-object v3, p2, v1
    const-string v4, "android.permission.POST_NOTIFICATIONS"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :next
    aget v5, p3, v1
    if-nez v5, :denied
    goto :next
    :denied
    invoke-virtual {p0, v3}, Lcom/abdullah/ahmed/StartActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :settings
    invoke-direct {p0}, Lcom/abdullah/ahmed/StartActivity;->beginPermissions()V
    return-void
    :settings
    invoke-direct {p0}, Lcom/abdullah/ahmed/StartActivity;->openSettingsDialog()V
    return-void
    :next
    add-int/lit8 v1, v1, 0x1
    goto :loop
    :ret
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    const-string v0, "StartActivity"
    const-string v1, "onCreate: starting safe startup flow"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "start_setup"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Lcom/abdullah/ahmed/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "completed"
    const/4 v2, 0x0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :startup_not_complete
    const-string v0, "StartActivity"
    const-string v1, "onCreate: setup already completed; opening MainActivity"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-direct {p0}, Lcom/abdullah/ahmed/StartActivity;->markCompleteAndOpenMain()V
    return-void

    :startup_not_complete
    const v0, -0x1
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->getWindow()Landroid/view/Window;
    move-result-object v1
    if-eqz v1, :window_done
    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V
    :window_done
    new-instance v2, Landroid/widget/ScrollView;
    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V
    new-instance v3, Landroid/widget/LinearLayout;
    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v4, 0x1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/16 v5, 0x18
    invoke-direct {p0, v5}, Lcom/abdullah/ahmed/StartActivity;->dp(I)I
    move-result v5
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V
    const/16 v6, 0x11
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V
    new-instance v7, Landroid/widget/ImageView;
    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v8
    const-string v9, "ic_application"
    const-string v10, "drawable"
    invoke-virtual {p0}, Lcom/abdullah/ahmed/StartActivity;->getPackageName()Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v8
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V
    const/16 v8, 0x58
    invoke-direct {p0, v8}, Lcom/abdullah/ahmed/StartActivity;->dp(I)I
    move-result v8
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v9, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    invoke-virtual {v3, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v7, Landroid/widget/TextView;
    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v8, "english_ime_name"
    invoke-direct {p0, v8}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    const-string v9, "start_title"
    invoke-direct {p0, v9}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    new-array v10, v4, [Ljava/lang/Object;
    const/4 v11, 0x0
    aput-object v8, v10, v11
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/high16 v9, 0x41d00000    # 26.0f
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V
    const v9, -0xdededf
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V
    const/4 v10, 0x0
    invoke-virtual {v7, v10, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, -0x1
    const/4 v0, -0x2
    invoke-direct {v12, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v3, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v7, Landroid/widget/TextView;
    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v8, "start_subtitle"
    invoke-direct {p0, v8}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/high16 v8, 0x41800000    # 16.0f
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V
    const v8, -0x7f7f80
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v12, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-direct {p0, v4}, Lcom/abdullah/ahmed/StartActivity;->dp(I)I
    move-result v4
    const/16 v10, 0x20
    invoke-direct {p0, v10}, Lcom/abdullah/ahmed/StartActivity;->dp(I)I
    move-result v10
    invoke-virtual {v12, v4, v5, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    invoke-virtual {v3, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v7, Landroid/widget/LinearLayout;
    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v10, 0x1
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V
    invoke-virtual {v7, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V
    const v10, -0x50506
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    const/high16 v10, 0x40c00000    # 6.0f
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setElevation(F)V
    new-instance v12, Landroid/widget/TextView;
    invoke-direct {v12, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v10, "start_permission_card_title"
    invoke-direct {p0, v10}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/high16 v10, 0x41900000    # 18.0f
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextSize(F)V
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    new-instance v12, Landroid/widget/TextView;
    invoke-direct {v12, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v10, "start_permission_card_message"
    invoke-direct {p0, v10}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/high16 v10, 0x41700000    # 15.0f
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextSize(F)V
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setGravity(I)V
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v12, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v12, v4, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    invoke-virtual {v3, v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    new-instance v7, Landroid/widget/Button;
    invoke-direct {v7, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
    const-string v10, "start_allow_permissions"
    invoke-direct {p0, v10}, Lcom/abdullah/ahmed/StartActivity;->text(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    const v10, -0xd15a11
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setBackgroundColor(I)V
    const/4 v10, -0x1
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setTextColor(I)V
    const/high16 v10, 0x41880000    # 17.0f
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setTextSize(F)V
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
    const/16 v12, 0x38
    invoke-direct {p0, v12}, Lcom/abdullah/ahmed/StartActivity;->dp(I)I
    move-result v12
    invoke-direct {v10, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v10, v4, v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    invoke-virtual {v3, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    invoke-virtual {p0, v2}, Lcom/abdullah/ahmed/StartActivity;->setContentView(Landroid/view/View;)V
    return-void
.end method
