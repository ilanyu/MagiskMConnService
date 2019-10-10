.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;->b()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

.field final synthetic b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker$1;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a(Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method
