.class public final Landroid/support/v4/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .registers 3
    .param p0    # Landroid/app/ActivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 40
    invoke-static {p0}, Landroid/support/v4/app/ActivityManagerCompatKitKat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
