.class public Lmiui/cloud/common/e;
.super Lmiui/cloud/common/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lmiui/cloud/common/c;-><init>(Ljava/lang/Class;)V

    .line 10
    iput-object p2, p0, Lmiui/cloud/common/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lmiui/cloud/common/e;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    :try_start_6
    iget-object v2, p0, Lmiui/cloud/common/e;->a:Ljava/lang/Object;

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_c} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_c} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_15

    .line 29
    throw p1

    .line 31
    :cond_15
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catch_1a
    move-exception p1

    .line 24
    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Bad callback. "

    aput-object v1, p2, v0

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2a
    move-exception p1

    .line 21
    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Bad callback. "

    aput-object v1, p2, v0

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->b([Ljava/lang/Object;)V

    .line 22
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method
