.class Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;
.super Lcom/xiaomi/accountsdk/request/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/IPStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedIpStatHelper"
.end annotation


# static fields
.field private static final a:J = -0x1L

.field private static final b:J = -0x2L


# instance fields
.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 456
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/h;-><init>()V

    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->d:Ljava/lang/String;

    .line 475
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->e:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 7

    const-string v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_coef=%d&cachedip=%s&cachediptime=%d&dnsip=%s&dnsiptime=%d&backupip0=%s&backupip0time=%d"

    const/16 v1, 0x8

    .line 500
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 501
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->d:Ljava/lang/String;

    const/4 p2, 0x2

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->c:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->d:Ljava/lang/String;

    .line 502
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->e:Ljava/lang/String;

    const/4 p2, 0x4

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->c:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->e:Ljava/lang/String;

    .line 503
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->f:Ljava/lang/String;

    const/4 p2, 0x6

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->c:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->f:Ljava/lang/String;

    .line 504
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    .line 500
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 505
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(JJ)V
    .registers 9

    const-string v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_time=%d&_thres=%d"

    const/4 v1, 0x3

    .line 488
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 489
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 488
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 463
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;ZJ)V
    .registers 6

    .line 479
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->c:Ljava/util/HashMap;

    if-eqz p2, :cond_5

    goto :goto_7

    :cond_5
    const-wide/16 p3, -0x1

    :goto_7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 467
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_netOld=%s&_netNew=%s"

    const/4 v1, 0x3

    .line 494
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->f:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 5

    .line 484
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->c:Ljava/util/HashMap;

    const-wide/16 v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
