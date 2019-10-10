.class Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception p1

    const-string v0, "Upload MiStat data failed: "

    .line 118
    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 120
    :goto_e
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;->a(ZZ)V

    return-void
.end method
