.class public Lcom/xiaomi/accountsdk/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 2

    const-string v0, "IS_TABLET"

    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 3

    :try_start_0
    const-string v0, "miui.os.Build"

    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    :catch_16
    return p1

    :catch_17
    return p1

    :catch_18
    return p1
.end method

.method public static a(Z)Z
    .registers 2

    const-string v0, "IS_ALPHA_BUILD"

    .line 11
    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/p;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Z)Z
    .registers 2

    const-string v0, "IS_STABLE_VERSION"

    .line 15
    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/p;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Z)Z
    .registers 2

    .line 23
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/p;->d(Z)Z

    move-result v0

    .line 24
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/p;->a(Z)Z

    move-result p0

    if-eqz v0, :cond_e

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static d(Z)Z
    .registers 2

    const-string v0, "IS_DEVELOPMENT_VERSION"

    .line 19
    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/p;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
