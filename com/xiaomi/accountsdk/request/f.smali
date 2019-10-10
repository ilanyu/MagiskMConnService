.class Lcom/xiaomi/accountsdk/request/f;
.super Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/f;->a:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/f;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a_()V
    .registers 3

    const-string v0, "Ip"

    const-string v1, "IpRequestStarted"

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "Ip"

    const-string v1, "cachedIpFailed"

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .registers 5

    const-string v0, "Ip"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupIpFailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/request/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Z)V
    .registers 6

    const-string v0, "http://dummyurl/IpDiagonose?_ver=%s&_ips=%s&_nets=%s&_ipResult=%s"

    const/4 v1, 0x4

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ","

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/f;->a:Ljava/util/ArrayList;

    .line 95
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, ","

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/f;->b:Ljava/util/ArrayList;

    .line 96
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 97
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    .line 93
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b_()V
    .registers 3

    const-string v0, "Ip"

    const-string v1, "IpRequestSucceed"

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/f;->b(Z)V

    return-void
.end method

.method public c()V
    .registers 6

    const-string v0, "http://dummyurl/cachedIpDiagonose?_ver=%s&cacheipnet=%s&cachedip=%s&dnsipnet=%s&dnsip=%s&finalnet=%s"

    const/4 v1, 0x6

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/f;->b:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/f;->a:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/f;->b:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/f;->a:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/f;->n()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "Ip"

    const-string v1, "dnsIp0Failed"

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .registers 3

    const-string v0, "Ip"

    const-string v1, "IpRequestIOSucceeded"

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/f;->b(Z)V

    return-void
.end method

.method public l()V
    .registers 3

    const-string v0, "Ip"

    const-string v1, "IpRequestFailed"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/f;->b(Z)V

    return-void
.end method
