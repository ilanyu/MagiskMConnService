.class public Lcom/miui/vsimcore/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "VSC-StatisticTrafficUtils"

.field private static b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;JJ)J
    .registers 11

    .line 30
    :try_start_0
    invoke-static {}, Lcom/miui/vsimcore/utils/h;->b()V

    .line 31
    sget-object v0, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J

    move-result-wide p0

    .line 32
    sget-object p2, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {p2}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->closeSession()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-wide p0

    :catch_12
    move-exception p0

    .line 35
    sget-object p1, Lcom/miui/vsimcore/utils/h;->a:Ljava/lang/String;

    const-string p2, "failed to getNetworkMobileTotalBytes"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a()V
    .registers 1

    .line 24
    invoke-static {}, Lcom/miui/vsimcore/utils/h;->b()V

    .line 25
    sget-object v0, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->forceUpdate()V

    return-void
.end method

.method public static b(Ljava/lang/String;JJ)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/miui/vsimcore/utils/h;->b()V

    .line 42
    sget-object v0, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;

    move-result-object p0

    .line 43
    sget-object p1, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->closeSession()V

    if-eqz p0, :cond_51

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_1d
    if-ge p3, p2, :cond_50

    .line 48
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p4

    .line 49
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "txBytes"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "rxBytes"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 51
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_50
    return-object p1

    :cond_51
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b()V
    .registers 1

    .line 17
    sget-object v0, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    if-nez v0, :cond_10

    .line 18
    new-instance v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-direct {v0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;-><init>()V

    sput-object v0, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    .line 19
    sget-object v0, Lcom/miui/vsimcore/utils/h;->b:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->openSession()V

    :cond_10
    return-void
.end method
