.class public final Landroid/support/v4/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .registers 4
    .param p0    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 38
    invoke-static {p0, p1}, Landroid/support/v4/graphics/PaintCompatApi23;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 40
    :cond_b
    invoke-static {p0, p1}, Landroid/support/v4/graphics/PaintCompatGingerbread;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
