.class Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultMessage"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .registers 3

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->a:Ljava/lang/Object;

    .line 549
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->b:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 562
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get resultMessageField: Please file a bug to CloudService!!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set miSyncResult: Please file a bug to CloudService!!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
