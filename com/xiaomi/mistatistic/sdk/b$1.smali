.class final Lcom/xiaomi/mistatistic/sdk/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 112
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "http://10.99.168.145:8097/micrash"

    goto :goto_b

    :cond_9
    const-string v0, "https://data.mistat.xiaomi.com/micrash"

    :goto_b
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/util/Map;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b$1$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/b$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/b$1;)V

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v1, "Error to upload the exception "

    .line 119
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    return-void
.end method
