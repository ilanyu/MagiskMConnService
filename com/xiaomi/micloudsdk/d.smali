.class public Lcom/xiaomi/micloudsdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "_all"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)J
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    .line 41
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;J)V
    .registers 4

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Landroid/accounts/Account;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 5

    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 2

    .line 65
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->a(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    .line 45
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 2

    .line 69
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->b(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    .line 53
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->c(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->c(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 2

    .line 57
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->d(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/c;->e(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 3

    .line 73
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/c;->e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
