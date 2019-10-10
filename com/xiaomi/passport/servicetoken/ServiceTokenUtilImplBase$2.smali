.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->a(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

.field final synthetic c:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .registers 4

    .line 28
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->c:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->c:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->b(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
