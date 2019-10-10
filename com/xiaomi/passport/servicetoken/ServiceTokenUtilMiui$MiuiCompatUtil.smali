.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiCompatUtil"
.end annotation


# static fields
.field private static volatile a:Ljava/lang/Boolean;

.field private static volatile b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Z
    .registers 5

    .line 236
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 237
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    .line 241
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/p;->b(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    new-instance v1, Lcom/xiaomi/accountsdk/utils/r;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/r;-><init>(II)V

    .line 242
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/r;->a(Lcom/xiaomi/accountsdk/utils/r;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_36

    .line 244
    :cond_21
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/p;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Lcom/xiaomi/accountsdk/utils/q;

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaomi/accountsdk/utils/q;-><init>(III)V

    .line 245
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/q;->a(Lcom/xiaomi/accountsdk/utils/q;Z)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 251
    :goto_36
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_41

    .line 254
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->a:Ljava/lang/Boolean;

    .line 257
    :cond_41
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static b()Z
    .registers 6

    .line 263
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 264
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    .line 268
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/p;->b(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/xiaomi/accountsdk/utils/r;

    const/16 v3, 0x8

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/utils/r;-><init>(II)V

    .line 269
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/r;->a(Lcom/xiaomi/accountsdk/utils/r;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_3a

    .line 271
    :cond_22
    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/p;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Lcom/xiaomi/accountsdk/utils/q;

    const/4 v3, 0x6

    const/16 v4, 0xb

    const/16 v5, 0x19

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/q;-><init>(III)V

    .line 272
    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/q;->a(Lcom/xiaomi/accountsdk/utils/q;Z)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    .line 278
    :goto_3a
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_45

    .line 281
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->b:Ljava/lang/Boolean;

    .line 284
    :cond_45
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
