.class public Lcom/xiaomi/accountsdk/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 7
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/x;->a()Lcom/xiaomi/accountsdk/utils/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/x;->c()J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/s;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 2

    .line 12
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/g;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
