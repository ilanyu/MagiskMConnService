.class Lcom/xiaomi/mistatistic/sdk/controller/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d$a;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    const-string v1, "error while executing job."

    .line 53
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method
