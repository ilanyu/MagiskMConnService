.class Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombMr2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenHeightDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result p1

    return p1
.end method

.method public getScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result p1

    return p1
.end method

.method public getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result p1

    return p1
.end method
