.class Landroid/support/v4/view/MotionEventCompatICS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonState(Landroid/view/MotionEvent;)I
    .registers 1

    .line 27
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    return p0
.end method