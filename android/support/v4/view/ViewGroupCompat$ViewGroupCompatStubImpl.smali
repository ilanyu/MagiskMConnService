.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 3

    .line 90
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 91
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    return-void
.end method

.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3

    return-void
.end method
