.class Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;
.super Landroid/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr2BitmapCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Landroid/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2

    .line 60
    invoke-static {p1}, Landroid/support/v4/graphics/BitmapCompatJellybeanMR2;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 3

    .line 65
    invoke-static {p1, p2}, Landroid/support/v4/graphics/BitmapCompatJellybeanMR2;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
