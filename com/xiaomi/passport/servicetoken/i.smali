.class public final Lcom/xiaomi/passport/servicetoken/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/xiaomi/passport/servicetoken/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    new-instance v0, Lcom/xiaomi/passport/servicetoken/i;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/i;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/i;->a:Lcom/xiaomi/passport/servicetoken/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/passport/servicetoken/i;
    .registers 1

    .line 9
    sget-object v0, Lcom/xiaomi/passport/servicetoken/i;->a:Lcom/xiaomi/passport/servicetoken/i;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/passport/servicetoken/c;)Lcom/xiaomi/passport/servicetoken/d;
    .registers 3

    .line 17
    new-instance v0, Lcom/xiaomi/passport/servicetoken/h;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/h;-><init>(Lcom/xiaomi/passport/servicetoken/c;)V

    return-object v0
.end method

.method public b()Lcom/xiaomi/passport/servicetoken/d;
    .registers 2

    .line 13
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;-><init>()V

    return-object v0
.end method

.method public c()Lcom/xiaomi/passport/servicetoken/c;
    .registers 3

    .line 21
    new-instance v0, Lcom/xiaomi/passport/servicetoken/b;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/a;

    invoke-direct {v1}, Lcom/xiaomi/passport/servicetoken/a;-><init>()V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Lcom/xiaomi/passport/servicetoken/a;)V

    return-object v0
.end method
