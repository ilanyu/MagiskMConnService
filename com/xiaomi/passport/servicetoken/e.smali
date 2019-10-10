.class public Lcom/xiaomi/passport/servicetoken/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 15
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/g;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
