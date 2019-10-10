.class public abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture$ServiceTokenCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServiceTokenCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback<",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .registers 2

    .line 76
    check-cast p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    .line 77
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture$ServiceTokenCallback;->a(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V

    return-void
.end method

.method protected abstract a(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V
.end method
