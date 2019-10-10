.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseEdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public finish(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAbsorb(Ljava/lang/Object;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onPull(Ljava/lang/Object;FF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setSize(Ljava/lang/Object;II)V
    .registers 4

    return-void
.end method
