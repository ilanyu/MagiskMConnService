.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;
.super Lcom/xiaomi/accountsdk/futureservice/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->b(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/futureservice/a<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->c()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->b:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->c(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0
.end method
