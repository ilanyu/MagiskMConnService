.class Lcom/xiaomi/accountsdk/utils/SyncServerTimeExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/utils/x;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/utils/x;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/utils/x;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/SyncServerTimeExecutor$1;->a:Lcom/xiaomi/accountsdk/utils/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 37
    :try_start_0
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/x;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_1c
    .catch Lcom/xiaomi/accountsdk/request/a; {:try_start_0 .. :try_end_9} :catch_13
    .catch Lcom/xiaomi/accountsdk/request/c; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_24

    :catch_a
    move-exception v0

    const-string v1, "SyncServerTimeExecutor"

    const-string v2, "syncServerTime"

    .line 43
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_13
    move-exception v0

    const-string v1, "SyncServerTimeExecutor"

    const-string v2, "syncServerTime"

    .line 41
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_1c
    move-exception v0

    const-string v1, "SyncServerTimeExecutor"

    const-string v2, "syncServerTime"

    .line 39
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method
