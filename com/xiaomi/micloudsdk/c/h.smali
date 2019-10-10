.class public Lcom/xiaomi/micloudsdk/c/h;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x3e9

.field public static final c:I = 0x3ea

.field public static final d:I = 0x3eb

.field public static final e:I = 0x7d0

.field public static final f:I = 0x7d1

.field public static final g:I = 0x7d2


# instance fields
.field private final h:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    iput p1, p0, Lcom/xiaomi/micloudsdk/c/h;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/xiaomi/micloudsdk/c/h;->h:I

    return v0
.end method
