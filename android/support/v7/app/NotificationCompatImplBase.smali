.class Landroid/support/v7/app/NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p9

    move/from16 v10, p12

    .line 280
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 281
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move/from16 v14, p13

    invoke-direct {v12, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v13, -0x1

    move/from16 v14, p11

    if-ge v14, v13, :cond_2a

    const/4 v14, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v14, 0x0

    .line 286
    :goto_2b
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-lt v13, v15, :cond_5e

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-ge v13, v15, :cond_5e

    if-eqz v14, :cond_4c

    .line 289
    sget v13, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v14, "setBackgroundResource"

    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_bg_low:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 291
    sget v13, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v14, "setBackgroundResource"

    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_5e

    .line 294
    :cond_4c
    sget v13, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v14, "setBackgroundResource"

    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_bg:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 296
    sget v13, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v14, "setBackgroundResource"

    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_5e
    :goto_5e
    const/16 v15, 0x8

    if-eqz v6, :cond_ac

    .line 304
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_74

    .line 305
    sget v13, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    sget v13, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v13, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_79

    .line 308
    :cond_74
    sget v13, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v13, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_79
    if-eqz v5, :cond_e1

    .line 311
    sget v13, Landroid/support/v7/appcompat/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 313
    sget v14, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v13, v14

    .line 315
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v15, v8, :cond_9b

    .line 316
    invoke-static {v0, v5, v13, v14, v10}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    sget v5, Landroid/support/v7/appcompat/R$id;->right_icon:I

    invoke-virtual {v12, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_a5

    .line 323
    :cond_9b
    sget v8, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/4 v9, -0x1

    .line 324
    invoke-static {v0, v5, v9}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    invoke-virtual {v12, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 326
    :goto_a5
    sget v0, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/4 v8, 0x0

    invoke-virtual {v12, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_e1

    :cond_ac
    const/4 v8, 0x0

    if-eqz v5, :cond_e1

    .line 329
    sget v9, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 330
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_d7

    .line 331
    sget v8, Landroid/support/v7/appcompat/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Landroid/support/v7/appcompat/R$dimen;->notification_big_circle_margin:I

    .line 333
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 334
    sget v9, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 336
    invoke-static {v0, v5, v8, v9, v10}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 341
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_e1

    .line 343
    :cond_d7
    sget v8, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v9, -0x1

    .line 344
    invoke-static {v0, v5, v9}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    invoke-virtual {v12, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_e1
    :goto_e1
    if-eqz v1, :cond_e8

    .line 348
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_e8
    if-eqz v2, :cond_f1

    .line 351
    sget v0, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {v12, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v14, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v14, 0x0

    .line 355
    :goto_f2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_fc

    if-eqz v6, :cond_fc

    const/4 v0, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v0, 0x0

    :goto_fd
    if-eqz v3, :cond_10d

    .line 357
    sget v0, Landroid/support/v7/appcompat/R$id;->info:I

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 358
    sget v0, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_10a
    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_144

    :cond_10d
    if-lez v4, :cond_138

    .line 362
    sget v0, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-le v4, v0, :cond_123

    .line 365
    sget v0, Landroid/support/v7/appcompat/R$id;->info:I

    sget v1, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_131

    .line 368
    :cond_123
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 369
    sget v1, Landroid/support/v7/appcompat/R$id;->info:I

    int-to-long v3, v4

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 371
    :goto_131
    sget v0, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_10a

    .line 375
    :cond_138
    sget v1, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v3, 0x8

    invoke-virtual {v12, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move/from16 v16, v14

    move v14, v0

    move/from16 v0, v16

    :goto_144
    if-eqz v7, :cond_16a

    .line 379
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_16a

    .line 380
    sget v1, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {v12, v1, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v2, :cond_162

    .line 382
    sget v1, Landroid/support/v7/appcompat/R$id;->text2:I

    invoke-virtual {v12, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 383
    sget v1, Landroid/support/v7/appcompat/R$id;->text2:I

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v1, 0x1

    const/16 v8, 0x8

    goto :goto_16d

    .line 386
    :cond_162
    sget v1, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v8, 0x8

    invoke-virtual {v12, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_16c

    :cond_16a
    const/16 v8, 0x8

    :goto_16c
    const/4 v1, 0x0

    :goto_16d
    if-eqz v1, :cond_199

    .line 391
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_199

    if-eqz p14, :cond_184

    .line 394
    sget v1, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 396
    sget v2, Landroid/support/v7/appcompat/R$id;->text:I

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 399
    :cond_184
    sget v1, Landroid/support/v7/appcompat/R$id;->line1:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p0, v12

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_199
    const-wide/16 v1, 0x0

    move-wide/from16 v3, p9

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1d8

    if-eqz p8, :cond_1c9

    .line 403
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1c9

    .line 404
    sget v1, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 405
    sget v1, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v2, "setBase"

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v5, v9

    add-long/2addr v3, v5

    .line 405
    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 407
    sget v1, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v2, "setStarted"

    const/4 v14, 0x1

    invoke-virtual {v12, v1, v2, v14}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_1d8

    :cond_1c9
    const/4 v14, 0x1

    .line 409
    sget v1, Landroid/support/v7/appcompat/R$id;->time:I

    const/4 v15, 0x0

    invoke-virtual {v12, v1, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 410
    sget v1, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v2, "setTime"

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_1d9

    :cond_1d8
    :goto_1d8
    const/4 v15, 0x0

    .line 414
    :goto_1d9
    sget v1, Landroid/support/v7/appcompat/R$id;->right_side:I

    if-eqz v14, :cond_1df

    const/4 v2, 0x0

    goto :goto_1e1

    :cond_1df
    const/16 v2, 0x8

    :goto_1e1
    invoke-virtual {v12, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 415
    sget v1, Landroid/support/v7/appcompat/R$id;->line3:I

    if-eqz v0, :cond_1e9

    const/4 v8, 0x0

    :cond_1e9
    invoke-virtual {v12, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v12
.end method

.method public static applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJIIIZ",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 207
    invoke-static/range {p0 .. p14}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 210
    sget p2, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/4 p2, 0x0

    if-eqz p15, :cond_2d

    .line 213
    invoke-virtual {p15}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2d

    const/4 p4, 0x3

    if-le p3, p4, :cond_16

    const/4 p3, 0x3

    :cond_16
    const/4 p4, 0x0

    :goto_17
    if-ge p4, p3, :cond_2b

    .line 218
    invoke-virtual {p15, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-static {p0, p5}, Landroid/support/v7/app/NotificationCompatImplBase;->generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object p5

    .line 219
    sget p6, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {p1, p6, p5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_17

    :cond_2b
    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    if-eqz p0, :cond_31

    goto :goto_33

    :cond_31
    const/16 p2, 0x8

    .line 224
    :goto_33
    sget p0, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    sget p0, Landroid/support/v7/appcompat/R$id;->action_divider:I

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p1
.end method

.method public static buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 10

    .line 437
    invoke-static {p1}, Landroid/support/v7/app/NotificationCompatImplBase;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 438
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 439
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 440
    sget p2, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 441
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2a

    .line 443
    sget v2, Landroid/support/v7/appcompat/R$id;->notification_main_column_container:I

    const/4 v3, 0x0

    .line 444
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImplBase;->calculateTopPadding(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 443
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_2a
    return-void
.end method

.method public static calculateTopPadding(Landroid/content/Context;)I
    .registers 5

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    .line 459
    invoke-static {p0, v2, v3}, Landroid/support/v7/app/NotificationCompatImplBase;->constrain(FFF)F

    move-result p0

    sub-float/2addr p0, v2

    const v3, 0x3e999998    # 0.29999995f

    div-float/2addr p0, v3

    sub-float/2addr v2, p0

    int-to-float v0, v0

    mul-float v2, v2, v0

    int-to-float v0, v1

    mul-float p0, p0, v0

    add-float/2addr v2, p0

    .line 463
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method private static createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 249
    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .registers 6

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p3, :cond_f

    .line 254
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    goto :goto_10

    :cond_f
    move p1, p3

    :goto_10
    if-nez p3, :cond_16

    .line 255
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    .line 256
    :cond_16
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0, v1, v1, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_30

    .line 259
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 262
    :cond_30
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;
    .registers 6

    .line 421
    sget v0, Landroid/support/v7/appcompat/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-static {p0, v0, p4, p2}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 423
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x1

    .line 425
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    .line 426
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    .line 427
    invoke-virtual {p0, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const/4 p2, -0x1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 429
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method

.method private static generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .registers 8

    .line 231
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 232
    :goto_7
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_14

    .line 233
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionTombstoneLayoutResource()I

    move-result v3

    goto :goto_18

    .line 234
    :cond_14
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionLayoutResource()I

    move-result v3

    :goto_18
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 235
    sget v2, Landroid/support/v7/appcompat/R$id;->action_image:I

    .line 236
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->notification_action_color_filter:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 236
    invoke-static {p0, v3, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 235
    invoke-virtual {v1, v2, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 238
    sget p0, Landroid/support/v7/appcompat/R$id;->action_text:I

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v0, :cond_42

    .line 240
    sget p0, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 242
    :cond_42
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-lt p0, v0, :cond_4f

    .line 243
    sget p0, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object p1, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_4f
    return-object v1
.end method

.method private static generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 33
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List<",
            "TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    move-object/from16 v0, p12

    if-eqz p15, :cond_8

    .line 85
    sget v1, Landroid/support/v7/appcompat/R$layout;->notification_template_media_custom:I

    :goto_6
    move v15, v1

    goto :goto_b

    :cond_8
    sget v1, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    goto :goto_6

    :goto_b
    const/16 v16, 0x1

    const/4 v7, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-static/range {v2 .. v16}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 92
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_30

    const/4 v4, 0x0

    goto :goto_36

    .line 93
    :cond_30
    array-length v4, v0

    const/4 v5, 0x3

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 96
    :goto_36
    sget v5, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v1, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v4, :cond_77

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v4, :cond_77

    if-ge v5, v2, :cond_5a

    .line 105
    aget v6, v0, v5

    move-object/from16 v7, p11

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v8, p0

    .line 106
    invoke-static {v8, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 107
    sget v9, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v1, v9, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 100
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 100
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    move-object/from16 v8, p0

    const/16 v0, 0x8

    if-eqz p13, :cond_a0

    .line 111
    sget v2, Landroid/support/v7/appcompat/R$id;->end_padder:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    sget v0, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    sget v0, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v2, p14

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 114
    sget v0, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v2, "setAlpha"

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 114
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_aa

    .line 117
    :cond_a0
    sget v2, Landroid/support/v7/appcompat/R$id;->end_padder:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 118
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_aa
    return-object v1
.end method

.method private static generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .line 175
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 176
    :goto_9
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget v2, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v1, p0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 178
    sget p0, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v0, :cond_28

    .line 180
    sget p0, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 182
    :cond_28
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-lt p0, v0, :cond_37

    .line 183
    sget p0, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_37
    return-object v1
.end method

.method public static generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 32
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List<",
            "TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 147
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v1, p15

    .line 150
    invoke-static {v1, v0}, Landroid/support/v7/app/NotificationCompatImplBase;->getBigMediaLayoutResource(ZI)I

    move-result v14

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    .line 148
    invoke-static/range {v1 .. v15}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 153
    sget v2, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/4 v2, 0x0

    if-lez v0, :cond_4c

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v0, :cond_4c

    move-object/from16 v4, p12

    .line 156
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v6, p0

    invoke-static {v6, v5}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 157
    sget v7, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_4c
    move-object/from16 v6, p0

    if-eqz p13, :cond_6e

    .line 161
    sget v0, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    sget v0, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v2, "setAlpha"

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 162
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 164
    sget v0, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v2, p14

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_75

    .line 166
    :cond_6e
    sget v0, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_75
    return-object v1
.end method

.method private static getActionLayoutResource()I
    .registers 1

    .line 268
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action:I

    return v0
.end method

.method private static getActionTombstoneLayoutResource()I
    .registers 1

    .line 272
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action_tombstone:I

    return v0
.end method

.method private static getBigMediaLayoutResource(ZI)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x3

    if-gt p1, v0, :cond_b

    if-eqz p0, :cond_8

    .line 192
    sget p0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow_custom:I

    goto :goto_a

    :cond_8
    sget p0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    :goto_a
    return p0

    :cond_b
    if-eqz p0, :cond_10

    .line 196
    sget p0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_custom:I

    goto :goto_12

    :cond_10
    sget p0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    :goto_12
    return p0
.end method

.method private static hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 3

    .line 449
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 450
    sget v0, Landroid/support/v7/appcompat/R$id;->text2:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 451
    sget v0, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public static overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 20
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List<",
            "TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 66
    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 70
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    if-eqz p14, :cond_15

    .line 72
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_15
    return-object v0
.end method

.method public static overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V
    .registers 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List<",
            "TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 131
    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz p14, :cond_f

    .line 135
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_f
    return-void
.end method
