.class public Lcom/xiaomi/accountsdk/request/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "183.84.5.8"

.field static final b:Ljava/lang/String; = "111.13.142.141"

.field private static final c:J = 0x0L

.field private static final d:J = 0x36ee80L

.field private static final e:J = 0x240c8400L

.field private static final f:I = 0x2

.field private static g:J = 0x36ee80L

.field private static h:J = 0x240c8400L

.field private static i:J = 0x0L

.field private static j:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()J
    .registers 2

    .line 30
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->g:J

    return-wide v0
.end method

.method static a(J)V
    .registers 2

    .line 46
    sput-wide p0, Lcom/xiaomi/accountsdk/request/i;->g:J

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/request/j;)V
    .registers 3

    if-eqz p0, :cond_22

    .line 22
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->g:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/j;->b(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/i;->g:J

    .line 23
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->h:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/j;->d(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/i;->h:J

    .line 24
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->i:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/j;->f(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/i;->i:J

    .line 25
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->j:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/j;->h(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/i;->j:J

    :cond_22
    return-void
.end method

.method static b()J
    .registers 2

    .line 34
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->h:J

    return-wide v0
.end method

.method static b(J)V
    .registers 2

    .line 50
    sput-wide p0, Lcom/xiaomi/accountsdk/request/i;->h:J

    return-void
.end method

.method static c()J
    .registers 2

    .line 38
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->i:J

    return-wide v0
.end method

.method static c(J)V
    .registers 2

    .line 54
    sput-wide p0, Lcom/xiaomi/accountsdk/request/i;->i:J

    return-void
.end method

.method static d()J
    .registers 2

    .line 42
    sget-wide v0, Lcom/xiaomi/accountsdk/request/i;->j:J

    return-wide v0
.end method

.method static d(J)V
    .registers 2

    .line 58
    sput-wide p0, Lcom/xiaomi/accountsdk/request/i;->j:J

    return-void
.end method
