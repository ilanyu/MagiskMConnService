.class public Lcom/miui/vsimcore/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x15

.field public static final b:I = 0x17

.field public static final c:I = 0x18

.field public static final d:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static b()Z
    .registers 2

    .line 21
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->a()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static c()Z
    .registers 2

    .line 25
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->a()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static d()Z
    .registers 2

    .line 28
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->a()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static e()Z
    .registers 2

    .line 32
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->a()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static f()Z
    .registers 2

    .line 36
    invoke-static {}, Lcom/miui/vsimcore/utils/j;->a()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
