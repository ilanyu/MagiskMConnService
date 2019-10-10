.class Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/RequestWithIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IpRequestResult"
.end annotation


# instance fields
.field a:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

.field b:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->a:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->b:J

    return-void
.end method
