--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8
-- Dumped by pg_dump version 12.8

-- Started on 2024-08-20 21:42:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 49570)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 2945 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 49605)
-- Name: blockchain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blockchain (
    id bigint NOT NULL,
    nome character varying NOT NULL,
    sigla character varying,
    descricao character varying,
    url character varying,
    imagem character varying
);


ALTER TABLE public.blockchain OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 49603)
-- Name: blockchain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blockchain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blockchain_id_seq OWNER TO postgres;

--
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 203
-- Name: blockchain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blockchain_id_seq OWNED BY public.blockchain.id;


--
-- TOC entry 220 (class 1259 OID 57764)
-- Name: link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.link (
    id bigint NOT NULL,
    tipo integer NOT NULL,
    url character varying NOT NULL,
    imagem character varying,
    bg character varying,
    icone character varying,
    color character varying,
    nome character varying,
    "plataformaId" bigint
);


ALTER TABLE public.link OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 57762)
-- Name: link_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.link_id_seq OWNER TO postgres;

--
-- TOC entry 2947 (class 0 OID 0)
-- Dependencies: 219
-- Name: link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.link_id_seq OWNED BY public.link.id;


--
-- TOC entry 208 (class 1259 OID 49631)
-- Name: melhoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.melhoria (
    id bigint NOT NULL,
    titulo character varying NOT NULL,
    url character varying,
    ip character varying,
    data timestamp without time zone NOT NULL,
    tipo integer NOT NULL,
    descricao character varying NOT NULL
);


ALTER TABLE public.melhoria OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 49629)
-- Name: melhoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.melhoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.melhoria_id_seq OWNER TO postgres;

--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 207
-- Name: melhoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.melhoria_id_seq OWNED BY public.melhoria.id;


--
-- TOC entry 218 (class 1259 OID 49710)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 49708)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 216 (class 1259 OID 49676)
-- Name: plataforma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plataforma (
    id bigint NOT NULL,
    nome character varying NOT NULL,
    descricao character varying NOT NULL,
    imagem character varying NOT NULL,
    "tipoMenuId" bigint,
    "tipoEscalabilidadeId" bigint,
    idcoinmarketcap character varying,
    simbolotrading character varying,
    cryptopanic character varying,
    tvl character varying
);


ALTER TABLE public.plataforma OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 49668)
-- Name: plataforma_blockchain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plataforma_blockchain (
    id bigint NOT NULL,
    "idBlockchainId" bigint,
    "idPlataformaId" bigint
);


ALTER TABLE public.plataforma_blockchain OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 49666)
-- Name: plataforma_blockchain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plataforma_blockchain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plataforma_blockchain_id_seq OWNER TO postgres;

--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 213
-- Name: plataforma_blockchain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plataforma_blockchain_id_seq OWNED BY public.plataforma_blockchain.id;


--
-- TOC entry 215 (class 1259 OID 49674)
-- Name: plataforma_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plataforma_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plataforma_id_seq OWNER TO postgres;

--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 215
-- Name: plataforma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plataforma_id_seq OWNED BY public.plataforma.id;


--
-- TOC entry 212 (class 1259 OID 49655)
-- Name: tipo_escalabilidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_escalabilidade (
    id bigint NOT NULL,
    nome character varying NOT NULL
);


ALTER TABLE public.tipo_escalabilidade OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 49653)
-- Name: tipo_escalabilidade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_escalabilidade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_escalabilidade_id_seq OWNER TO postgres;

--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 211
-- Name: tipo_escalabilidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_escalabilidade_id_seq OWNED BY public.tipo_escalabilidade.id;


--
-- TOC entry 210 (class 1259 OID 49642)
-- Name: tipo_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_menu (
    id bigint NOT NULL,
    nome character varying NOT NULL
);


ALTER TABLE public.tipo_menu OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 49640)
-- Name: tipo_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_menu_id_seq OWNER TO postgres;

--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 209
-- Name: tipo_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_menu_id_seq OWNED BY public.tipo_menu.id;


--
-- TOC entry 206 (class 1259 OID 49618)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id bigint NOT NULL,
    login character varying NOT NULL,
    senha character varying NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 49616)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 205
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 2754 (class 2604 OID 49608)
-- Name: blockchain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blockchain ALTER COLUMN id SET DEFAULT nextval('public.blockchain_id_seq'::regclass);


--
-- TOC entry 2762 (class 2604 OID 57767)
-- Name: link id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.link ALTER COLUMN id SET DEFAULT nextval('public.link_id_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 49634)
-- Name: melhoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.melhoria ALTER COLUMN id SET DEFAULT nextval('public.melhoria_id_seq'::regclass);


--
-- TOC entry 2761 (class 2604 OID 49713)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2760 (class 2604 OID 49679)
-- Name: plataforma id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma ALTER COLUMN id SET DEFAULT nextval('public.plataforma_id_seq'::regclass);


--
-- TOC entry 2759 (class 2604 OID 49671)
-- Name: plataforma_blockchain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma_blockchain ALTER COLUMN id SET DEFAULT nextval('public.plataforma_blockchain_id_seq'::regclass);


--
-- TOC entry 2758 (class 2604 OID 49658)
-- Name: tipo_escalabilidade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_escalabilidade ALTER COLUMN id SET DEFAULT nextval('public.tipo_escalabilidade_id_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 49645)
-- Name: tipo_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_menu ALTER COLUMN id SET DEFAULT nextval('public.tipo_menu_id_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 49621)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 2923 (class 0 OID 49605)
-- Dependencies: 204
-- Data for Name: blockchain; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.blockchain VALUES (1, 'Ethereum', 'ETH', '', '', '');
INSERT INTO public.blockchain VALUES (2, 'Cronos', 'CRO', '', '', '');
INSERT INTO public.blockchain VALUES (3, 'Fantom', 'FTM', '', '', '');
INSERT INTO public.blockchain VALUES (4, 'Cosmos', 'ATOM', '', '', '');
INSERT INTO public.blockchain VALUES (5, 'Polkadot', 'DOT', '', '', '');
INSERT INTO public.blockchain VALUES (6, 'Polygon', 'MATIC', '', '', '');
INSERT INTO public.blockchain VALUES (8, 'Arbitrum', 'ARBI', '', '', '');
INSERT INTO public.blockchain VALUES (9, 'Solana', 'SOL', '', '', '');
INSERT INTO public.blockchain VALUES (10, 'BNB', 'BNB', '', '', '');
INSERT INTO public.blockchain VALUES (11, 'Avalanche', 'AVAX', '', '', '');
INSERT INTO public.blockchain VALUES (7, 'Optimism', 'OP', '', '', '');
INSERT INTO public.blockchain VALUES (12, 'Cartesi', 'CTSI', '', '', '');
INSERT INTO public.blockchain VALUES (13, 'Bitcoin', 'BTC', NULL, NULL, NULL);
INSERT INTO public.blockchain VALUES (14, 'Gnosis', 'GNO', NULL, NULL, NULL);
INSERT INTO public.blockchain VALUES (15, 'Near', 'Near', NULL, NULL, NULL);
INSERT INTO public.blockchain VALUES (16, 'Tron', 'Tron', NULL, NULL, NULL);


--
-- TOC entry 2939 (class 0 OID 57764)
-- Dependencies: 220
-- Data for Name: link; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.link VALUES (42, 2, 'https://cartesi.io', '', '#1B97F3', 'globe', 'white', 'Website', 11);
INSERT INTO public.link VALUES (43, 1, 'https://github.com/cartesi?_gl=1*1kj91gw*_ga*MjA3NTc0NjIzNi4xNjkyNDgyMDUw*_ga_HM92STPNFJ*MTY5NDM5NDI1NS4xNS4xLjE2OTQzOTQyOTkuMC4wLjA.', 'git.svg', '', '', '', 'Github', 11);
INSERT INTO public.link VALUES (44, 2, 'https://docs.cartesi.io/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 11);
INSERT INTO public.link VALUES (45, 2, 'https://cartesi.io/blog/', '', '#FFAD64', 'blog', 'white', 'Blog', 11);
INSERT INTO public.link VALUES (46, 1, 'https://www.instagram.com/cartesiproject/', 'insta.svg', '', '', '', 'Instagram', 11);
INSERT INTO public.link VALUES (47, 1, 'https://t.me/CartesiProject', 'tel.svg', '', '', '', 'Telegram', 11);
INSERT INTO public.link VALUES (48, 1, 'https://www.linkedin.com/company/cartesi/', 'linkedin.png', '', '', '', 'Linkedin', 11);
INSERT INTO public.link VALUES (49, 1, 'https://www.reddit.com/r/cartesi/', 'reddit.png', '', '', '', 'Reddit', 11);
INSERT INTO public.link VALUES (50, 1, 'https://medium.com/cartesi', 'medium.webp', '', '', '', 'Medium', 11);
INSERT INTO public.link VALUES (51, 1, 'https://twitter.com/cartesiproject', 'twt.svg', '', '', '', 'Twitter', 11);
INSERT INTO public.link VALUES (52, 1, 'https://discord.com/invite/pfXMwXDDfW', 'disc.svg', '', '', '', 'Discord', 11);
INSERT INTO public.link VALUES (53, 1, 'https://www.youtube.com/@Cartesiproject/featured', 'yt.png', '', '', '', 'YouTube', 11);
INSERT INTO public.link VALUES (54, 1, 'https://www.coingecko.com/pt/moedas/cartesi', 'coingecko.png', '', '', '', 'CoinGecko', 11);
INSERT INTO public.link VALUES (55, 1, 'https://coinmarketcap.com/currencies/cartesi/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 11);
INSERT INTO public.link VALUES (56, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BITSTAMP%3ACTSIUSD', 'tradingview.png', '', '', '', 'Tradingview', 11);
INSERT INTO public.link VALUES (57, 1, 'https://www.binance.com/pt-BR/price/cartesi', 'binance.png', '', '', '', 'Binance', 11);
INSERT INTO public.link VALUES (58, 1, 'https://www.coinbase.com/price/cartesi', 'coinbase.svg', '', '', '', 'Coinbase', 11);
INSERT INTO public.link VALUES (59, 1, 'https://www.kucoin.com/price/CTSI', 'kucoin.png', '', '', '', 'Kucoin', 11);
INSERT INTO public.link VALUES (60, 1, 'https://www.bybit.com/pt-BR/coin-price/cartesi/', 'bybit.png', '', '', '', 'Bybit', 11);
INSERT INTO public.link VALUES (61, 1, 'https://www.okx.com/pt-br/price/cartesi-ctsi', 'okx.png', '', '', '', 'OKX', 11);
INSERT INTO public.link VALUES (62, 1, 'https://explorer.cartesi.io/', 'scam.png', '', '', '', 'Block Explorer', 11);
INSERT INTO public.link VALUES (63, 1, 'https://skynet.certik.com/projects/cartesi', 'certik.png', '', '', '', 'Certik', 11);
INSERT INTO public.link VALUES (64, 1, 'https://messari.io/asset/cartesi', 'messari.png', '', '', '', 'Messari', 11);
INSERT INTO public.link VALUES (65, 1, 'https://dune.com/emz86/Cartesi(CTSI)-token-Analytics', 'dune.png', '', '', '', 'Dune Analytics', 11);
INSERT INTO public.link VALUES (66, 1, 'https://dappradar.com/token/cartesi', 'dapr.png', '', '', '', 'Dappradar', 11);
INSERT INTO public.link VALUES (67, 1, 'https://app.bubblemaps.io/eth/token/0x491604c0fdf08347dd1fa4ee062a822a5dd06b5d', 'bubblemaps.png', '', '', '', 'Bubblemaps', 11);
INSERT INTO public.link VALUES (69, 2, 'https://arbitrum.io/', '', '#1B97F3', 'globe', 'white', 'Website', 13);
INSERT INTO public.link VALUES (70, 1, 'https://github.com/OffchainLabs/nitro', 'git.svg', '', '', '', 'Github', 13);
INSERT INTO public.link VALUES (71, 2, 'https://docs.arbitrum.io/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 13);
INSERT INTO public.link VALUES (72, 2, 'https://research.arbitrum.io/', '', '#FFAD64', 'blog', 'white', 'Forum', 13);
INSERT INTO public.link VALUES (73, 2, 'https://portal.arbitrum.io/', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 13);
INSERT INTO public.link VALUES (74, 1, 'https://www.instagram.com/arbitrumofficial/', 'insta.svg', '', '', '', 'Instagram', 13);
INSERT INTO public.link VALUES (75, 1, 'https://t.me/s/arbitrum', 'tel.svg', '', '', '', 'Telegram', 13);
INSERT INTO public.link VALUES (76, 1, 'https://www.linkedin.com/company/arbitrum/', 'linkedin.png', '', '', '', 'Linkedin', 13);
INSERT INTO public.link VALUES (77, 1, 'https://www.reddit.com/r/Arbitrum/', 'reddit.png', '', '', '', 'Reddit', 13);
INSERT INTO public.link VALUES (78, 1, 'https://medium.com/@arbitrumfoundation', 'medium.webp', '', '', '', 'Medium', 13);
INSERT INTO public.link VALUES (79, 1, 'https://twitter.com/arbitrum', 'twt.svg', '', '', '', 'Twitter', 13);
INSERT INTO public.link VALUES (80, 1, 'https://discord.com/invite/arbitrum', 'disc.svg', '', '', '', 'Discord', 13);
INSERT INTO public.link VALUES (81, 1, 'https://www.youtube.com/c/arbitrum', 'yt.png', '', '', '', 'YouTube', 13);
INSERT INTO public.link VALUES (82, 1, 'https://www.coingecko.com/pt/moedas/arbitrum', 'coingecko.png', '', '', '', 'CoinGecko', 13);
INSERT INTO public.link VALUES (83, 1, 'https://coinmarketcap.com/pt-br/currencies/arbitrum/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 13);
INSERT INTO public.link VALUES (84, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AARBUSDT', 'tradingview.png', '', '', '', 'Tradingview', 13);
INSERT INTO public.link VALUES (85, 1, 'https://www.binance.com/pt-BR/trade/ARB_USDT?theme=dark&type=spot', 'binance.png', '', '', '', 'Binance', 13);
INSERT INTO public.link VALUES (86, 1, 'https://www.coinbase.com/pt/price/arbitrum', 'coinbase.svg', '', '', '', 'Coinbase', 13);
INSERT INTO public.link VALUES (87, 1, 'https://www.kucoin.com/pt/price/ARB', 'kucoin.png', '', '', '', 'Kucoin', 13);
INSERT INTO public.link VALUES (88, 1, 'https://www.bybit.com/pt-BR/coin-price/arbitrum/', 'bybit.png', '', '', '', 'Bybit', 13);
INSERT INTO public.link VALUES (89, 1, 'https://www.okx.com/pt-br/price/arbitrum-arb', 'okx.png', '', '', '', 'OKX', 13);
INSERT INTO public.link VALUES (90, 1, 'https://arbiscan.io/', 'scam.png', '', '', '', 'Block Explorer', 13);
INSERT INTO public.link VALUES (91, 1, 'https://skynet.certik.com/projects/arbitrum', 'certik.png', '', '', '', 'Certik', 13);
INSERT INTO public.link VALUES (92, 1, 'https://defillama.com/chain/Arbitrum', 'defi.png', '', '', '', 'DefiLlama', 13);
INSERT INTO public.link VALUES (93, 1, 'https://messari.io/asset/arbitrum', 'messari.png', '', '', '', 'Messari', 13);
INSERT INTO public.link VALUES (94, 1, 'https://dune.com/luigy/Arbitrum-Analytics', 'dune.png', '', '', '', 'Dune Analytics', 13);
INSERT INTO public.link VALUES (95, 1, 'https://tokenterminal.com/terminal/projects/arbitrum', 'tokent.png', '', '', '', 'Token Terminal', 13);
INSERT INTO public.link VALUES (96, 1, 'https://dappradar.com/rankings/defi/chain/arbitrum', 'dapr.png', '', '', '', 'Dappradar', 13);
INSERT INTO public.link VALUES (97, 1, 'https://l2beat.com/scaling/projects/arbitrum', 'l2.png', '', '', '', 'L2 Beat', 13);
INSERT INTO public.link VALUES (98, 1, 'https://app.bubblemaps.io/arbi/token/0x912ce59144191c1204e64559fe8253a0e49e6548', 'bubblemaps.png', '', '', '', 'Bubblemaps', 13);
INSERT INTO public.link VALUES (99, 2, 'https://www.optimism.io/', '', '#1B97F3', 'globe', 'white', 'Website', 14);
INSERT INTO public.link VALUES (100, 1, 'https://github.com/ethereum-optimism', 'git.svg', '', '', '', 'Github', 14);
INSERT INTO public.link VALUES (101, 2, 'https://community.optimism.io/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 14);
INSERT INTO public.link VALUES (102, 2, 'https://optimism.mirror.xyz/', '', '#FFAD64', 'blog', 'white', 'Blog', 14);
INSERT INTO public.link VALUES (103, 2, 'https://www.optimism.io/apps/all', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 14);
INSERT INTO public.link VALUES (104, 1, 'https://www.reddit.com/r/optimismCollective/', 'reddit.png', '', '', '', 'Reddit', 14);
INSERT INTO public.link VALUES (105, 1, 'https://medium.com/@optimismpbc', 'medium.webp', '', '', '', 'Medium', 14);
INSERT INTO public.link VALUES (106, 1, 'https://twitter.com/optimismFND', 'twt.svg', '', '', '', 'Twitter', 14);
INSERT INTO public.link VALUES (107, 1, 'https://discord.com/invite/optimism', 'disc.svg', '', '', '', 'Discord', 14);
INSERT INTO public.link VALUES (108, 1, 'https://www.youtube.com/watch?v=K31nD-CIJ8E', 'yt.png', '', '', '', 'YouTube', 14);
INSERT INTO public.link VALUES (109, 1, 'https://www.coingecko.com/pt/moedas/optimism', 'coingecko.png', '', '', '', 'CoinGecko', 14);
INSERT INTO public.link VALUES (110, 1, 'https://coinmarketcap.com/currencies/optimism-ethereum/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 14);
INSERT INTO public.link VALUES (111, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AOPUSDT', 'tradingview.png', '', '', '', 'Tradingview', 14);
INSERT INTO public.link VALUES (112, 1, 'https://www.binance.com/pt-BR/trade/OP_USDT?theme=dark&type=spot', 'binance.png', '', '', '', 'Binance', 14);
INSERT INTO public.link VALUES (113, 1, 'https://www.coinbase.com/pt/price/optimism', 'coinbase.svg', '', '', '', 'Coinbase', 14);
INSERT INTO public.link VALUES (114, 1, 'https://www.kucoin.com/price/OP', 'kucoin.png', '', '', '', 'Kucoin', 14);
INSERT INTO public.link VALUES (115, 1, 'https://www.bybit.com/pt-BR/coin-price/optimism/', 'bybit.png', '', '', '', 'Bybit', 14);
INSERT INTO public.link VALUES (116, 1, 'https://www.okx.com/pt-br/price/optimism-op', 'okx.png', '', '', '', 'OKX', 14);
INSERT INTO public.link VALUES (117, 1, 'https://optimistic.etherscan.io/', 'scam.png', '', '', '', 'Block Explorer', 14);
INSERT INTO public.link VALUES (118, 1, 'https://skynet.certik.com/projects/optimism-ethereum', 'certik.png', '', '', '', 'Certik', 14);
INSERT INTO public.link VALUES (119, 1, 'https://defillama.com/chain/Optimism', 'defi.png', '', '', '', 'DefiLlama', 14);
INSERT INTO public.link VALUES (120, 1, 'https://messari.io/asset/optimism', 'messari.png', '', '', '', 'Messari', 14);
INSERT INTO public.link VALUES (121, 1, 'https://dune.com/optimismpbc', 'dune.png', '', '', '', 'Dune Analytics', 14);
INSERT INTO public.link VALUES (122, 1, 'https://tokenterminal.com/terminal/projects/optimism', 'tokent.png', '', '', '', 'Token Terminal', 14);
INSERT INTO public.link VALUES (123, 1, 'https://dappradar.com/rankings/defi/chain/optimism', 'dapr.png', '', '', '', 'Dappradar', 14);
INSERT INTO public.link VALUES (124, 1, 'https://l2beat.com/scaling/projects/optimism', 'l2.png', '', '', '', 'L2 Beat', 14);
INSERT INTO public.link VALUES (125, 2, 'https://polygon.technology/polygon-zkevm', '', '#1B97F3', 'globe', 'white', 'Website', 15);
INSERT INTO public.link VALUES (126, 1, 'https://github.com/0xpolygonhermez', 'git.svg', '', '', '', 'Github', 15);
INSERT INTO public.link VALUES (127, 2, 'https://wiki.polygon.technology/docs/zkEVM/develop/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 15);
INSERT INTO public.link VALUES (128, 2, 'https://polygon.technology/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 15);
INSERT INTO public.link VALUES (129, 2, 'https://polygon.technology/ecosystem', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 15);
INSERT INTO public.link VALUES (130, 1, 'https://www.instagram.com/0xpolygon/', 'insta.svg', '', '', '', 'Instagram', 15);
INSERT INTO public.link VALUES (131, 1, 'https://t.me/polygonofficial', 'tel.svg', '', '', '', 'Telegram', 15);
INSERT INTO public.link VALUES (132, 1, 'https://www.linkedin.com/company/polygonlabs/', 'linkedin.png', '', '', '', 'Linkedin', 15);
INSERT INTO public.link VALUES (133, 1, 'https://www.reddit.com/r/polygonnetwork/', 'reddit.png', '', '', '', 'Reddit', 15);
INSERT INTO public.link VALUES (134, 1, 'https://polygontech.medium.com/', 'medium.webp', '', '', '', 'Medium', 15);
INSERT INTO public.link VALUES (135, 1, 'https://twitter.com/0xPolygonLabs', 'twt.svg', '', '', '', 'Twitter', 15);
INSERT INTO public.link VALUES (136, 1, 'https://discord.com/invite/0xPolygon', 'disc.svg', '', '', '', 'Discord', 15);
INSERT INTO public.link VALUES (137, 1, 'https://www.youtube.com/watch?v=KKlh_xLzXJ0', 'yt.png', '', '', '', 'YouTube', 15);
INSERT INTO public.link VALUES (138, 1, 'https://www.coingecko.com/pt/moedas/polygon', 'coingecko.png', '', '', '', 'CoinGecko', 15);
INSERT INTO public.link VALUES (139, 1, 'https://coinmarketcap.com/currencies/polygon/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 15);
INSERT INTO public.link VALUES (140, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AMATICUSDT', 'tradingview.png', '', '', '', 'Tradingview', 15);
INSERT INTO public.link VALUES (141, 1, 'https://www.binance.com/pt-BR/price/polygon', 'binance.png', '', '', '', 'Binance', 15);
INSERT INTO public.link VALUES (142, 1, 'https://www.coinbase.com/pt/price/polygon', 'coinbase.svg', '', '', '', 'Coinbase', 15);
INSERT INTO public.link VALUES (143, 1, 'https://www.kucoin.com/price/MATIC', 'kucoin.png', '', '', '', 'Kucoin', 15);
INSERT INTO public.link VALUES (144, 1, 'https://www.bybit.com/en-US/coin-price/matic-network/', 'bybit.png', '', '', '', 'Bybit', 15);
INSERT INTO public.link VALUES (145, 1, 'https://www.okx.com/pt-br/price/polygon-matic', 'okx.png', '', '', '', 'OKX', 15);
INSERT INTO public.link VALUES (146, 1, 'https://zkevm.polygonscan.com/', 'scam.png', '', '', '', 'Block Explorer', 15);
INSERT INTO public.link VALUES (148, 1, 'https://defillama.com/chain/Polygon%20zkEVM', 'defi.png', '', '', '', 'DefiLlama', 15);
INSERT INTO public.link VALUES (149, 1, 'https://messari.io/asset/polygon', 'messari.png', '', '', '', 'Messari', 15);
INSERT INTO public.link VALUES (152, 1, 'https://dappradar.com/rankings/protocol/polygon', 'dapr.png', '', '', '', 'Dappradar', 15);
INSERT INTO public.link VALUES (153, 1, 'https://l2beat.com/scaling/projects/polygonzkevm', 'l2.png', '', '', '', 'L2 Beat', 15);
INSERT INTO public.link VALUES (154, 1, 'https://app.bubblemaps.io/eth/token/0x8fd9a8153c79d680d5caca9794ccac47f64f26a6', 'bubblemaps.png', '', '', '', 'Bubblemaps', 15);
INSERT INTO public.link VALUES (155, 2, 'https://www.starknet.io/en', '', '#1B97F3', 'globe', 'white', 'Website', 16);
INSERT INTO public.link VALUES (156, 1, 'https://github.com/starkware-libs', 'git.svg', '', '', '', 'Github', 16);
INSERT INTO public.link VALUES (157, 2, 'https://docs.starknet.io/documentation/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 16);
INSERT INTO public.link VALUES (158, 2, 'https://www.starknet.io/en/posts', '', '#FFAD64', 'blog', 'white', 'Blog', 16);
INSERT INTO public.link VALUES (159, 2, 'https://www.starknet.io/en/ecosystem/dapps', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 16);
INSERT INTO public.link VALUES (160, 1, 'https://t.me/sncorestars', 'tel.svg', '', '', '', 'Telegram', 16);
INSERT INTO public.link VALUES (161, 1, 'https://www.linkedin.com/company/starkware/', 'linkedin.png', '', '', '', 'Linkedin', 16);
INSERT INTO public.link VALUES (162, 1, 'https://medium.com/starkware/starknet/home', 'medium.webp', '', '', '', 'Medium', 16);
INSERT INTO public.link VALUES (163, 1, 'https://twitter.com/StarkWareLtd', 'twt.svg', '', '', '', 'Twitter', 16);
INSERT INTO public.link VALUES (164, 1, 'https://discord.com/invite/qypnmzkhbc', 'disc.svg', '', '', '', 'Discord', 16);
INSERT INTO public.link VALUES (165, 1, 'https://www.youtube.com/@starkware_ltd', 'yt.png', '', '', '', 'YouTube', 16);
INSERT INTO public.link VALUES (166, 1, 'https://coinmarketcap.com/pt-br/currencies/starknet-token/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 16);
INSERT INTO public.link VALUES (167, 1, 'https://www.binance.com/pt-BR/price/starknet-token', 'binance.png', '', '', '', 'Binance', 16);
INSERT INTO public.link VALUES (168, 1, 'https://starkscan.co/', 'scam.png', '', '', '', 'Block Explorer', 16);
INSERT INTO public.link VALUES (169, 1, 'https://defillama.com/chain/Starknet', 'defi.png', '', '', '', 'DefiLlama', 16);
INSERT INTO public.link VALUES (170, 1, 'https://messari.io/asset/starknet/profile', 'messari.png', '', '', '', 'Messari', 16);
INSERT INTO public.link VALUES (171, 1, 'https://dune.com/chaininsight/starknet-overview', 'dune.png', '', '', '', 'Dune Analytics', 16);
INSERT INTO public.link VALUES (172, 1, 'https://tokenterminal.com/terminal/projects/starknet', 'tokent.png', '', '', '', 'Token Terminal', 16);
INSERT INTO public.link VALUES (173, 1, 'https://dappradar.com/blog/tag/starknet', 'dapr.png', '', '', '', 'Dappradar', 16);
INSERT INTO public.link VALUES (174, 1, 'https://l2beat.com/scaling/projects/starknet', 'l2.png', '', '', '', 'L2 Beat', 16);
INSERT INTO public.link VALUES (175, 2, 'https://zksync.io/', '', '#1B97F3', 'globe', 'white', 'Website', 17);
INSERT INTO public.link VALUES (176, 1, 'https://github.com/matter-labs/zksync-era', 'git.svg', '', '', '', 'Github', 17);
INSERT INTO public.link VALUES (177, 2, 'https://era.zksync.io/docs/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 17);
INSERT INTO public.link VALUES (178, 2, 'https://zksync.mirror.xyz/', '', '#FFAD64', 'blog', 'white', 'Blog', 17);
INSERT INTO public.link VALUES (179, 2, 'https://ecosystem.zksync.io/', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 17);
INSERT INTO public.link VALUES (180, 1, 'https://t.me/zksync', 'tel.svg', '', '', '', 'Telegram', 17);
INSERT INTO public.link VALUES (181, 1, 'https://www.reddit.com/r/zkSync/', 'reddit.png', '', '', '', 'Reddit', 17);
INSERT INTO public.link VALUES (182, 1, 'https://medium.com/@zksync-team', 'medium.webp', '', '', '', 'Medium', 17);
INSERT INTO public.link VALUES (183, 1, 'https://twitter.com/zksync', 'twt.svg', '', '', '', 'Twitter', 17);
INSERT INTO public.link VALUES (184, 1, 'https://discord.com/invite/QMbmQ2Q', 'disc.svg', '', '', '', 'Discord', 17);
INSERT INTO public.link VALUES (185, 1, 'https://www.youtube.com/watch?v=EgC7W0U9gac', 'yt.png', '', '', '', 'YouTube', 17);
INSERT INTO public.link VALUES (186, 1, 'https://coinmarketcap.com/currencies/zksync/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 17);
INSERT INTO public.link VALUES (187, 1, 'https://explorer.zksync.io/', 'scam.png', '', '', '', 'Block Explorer', 17);
INSERT INTO public.link VALUES (188, 1, 'https://defillama.com/chain/zkSync%20Era', 'defi.png', '', '', '', 'DefiLlama', 17);
INSERT INTO public.link VALUES (189, 1, 'https://messari.io/asset/zksync', 'messari.png', '', '', '', 'Messari', 17);
INSERT INTO public.link VALUES (190, 1, 'https://dune.com/dev_1hermn/zksync-era', 'dune.png', '', '', '', 'Dune Analytics', 17);
INSERT INTO public.link VALUES (191, 1, 'https://tokenterminal.com/terminal/projects/zksync-era', 'tokent.png', '', '', '', 'Token Terminal', 17);
INSERT INTO public.link VALUES (192, 1, 'https://l2beat.com/scaling/projects/zksync-era', 'l2.png', '', '', '', 'L2 Beat', 17);
INSERT INTO public.link VALUES (193, 2, 'https://base.org/', '', '#1B97F3', 'globe', 'white', 'Website', 18);
INSERT INTO public.link VALUES (194, 1, 'https://github.com/base-org', 'git.svg', '', '', '', 'Github', 18);
INSERT INTO public.link VALUES (195, 2, 'https://docs.base.org/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 18);
INSERT INTO public.link VALUES (196, 2, 'https://base.mirror.xyz/', '', '#FFAD64', 'blog', 'white', 'Blog', 18);
INSERT INTO public.link VALUES (197, 2, 'https://base.org/ecosystem', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 18);
INSERT INTO public.link VALUES (198, 1, 'https://twitter.com/buildonbase', 'twt.svg', '', '', '', 'Twitter', 18);
INSERT INTO public.link VALUES (199, 1, 'https://discord.com/invite/buildonbase', 'disc.svg', '', '', '', 'Discord', 18);
INSERT INTO public.link VALUES (200, 1, 'https://coinmarketcap.com/currencies/base/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 18);
INSERT INTO public.link VALUES (201, 1, 'https://basescan.org/', 'scam.png', '', '', '', 'Block Explorer', 18);
INSERT INTO public.link VALUES (202, 1, 'https://skynet.certik.com/projects/base', 'certik.png', '', '', '', 'Certik', 18);
INSERT INTO public.link VALUES (203, 1, 'https://defillama.com/chain/Base', 'defi.png', '', '', '', 'DefiLlama', 18);
INSERT INTO public.link VALUES (204, 1, 'https://dune.com/tk-research/base', 'dune.png', '', '', '', 'Dune Analytics', 18);
INSERT INTO public.link VALUES (205, 1, 'https://tokenterminal.com/terminal/projects/base', 'tokent.png', '', '', '', 'Token Terminal', 18);
INSERT INTO public.link VALUES (206, 1, 'https://dappradar.com/rankings/protocol/base', 'dapr.png', '', '', '', 'Dappradar', 18);
INSERT INTO public.link VALUES (207, 1, 'https://l2beat.com/scaling/projects/base', 'l2.png', '', '', '', 'L2 Beat', 18);
INSERT INTO public.link VALUES (208, 2, 'https://linea.build/', '', '#1B97F3', 'globe', 'white', 'Website', 19);
INSERT INTO public.link VALUES (209, 1, 'https://github.com/orgs/Consensys/repositories?type=all', 'git.svg', '', '', '', 'Github', 19);
INSERT INTO public.link VALUES (210, 2, 'https://docs.linea.build/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 19);
INSERT INTO public.link VALUES (211, 2, 'https://linea.mirror.xyz/', '', '#FFAD64', 'blog', 'white', 'Blog', 19);
INSERT INTO public.link VALUES (212, 2, 'https://linea.build/apps', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 19);
INSERT INTO public.link VALUES (213, 1, 'https://www.linkedin.com/company/consensys-software-inc/', 'linkedin.png', '', '', '', 'Linkedin', 19);
INSERT INTO public.link VALUES (214, 1, 'https://www.reddit.com/r/Linea/', 'reddit.png', '', '', '', 'Reddit', 19);
INSERT INTO public.link VALUES (215, 1, 'https://twitter.com/LineaBuild', 'twt.svg', '', '', '', 'Twitter', 19);
INSERT INTO public.link VALUES (216, 1, 'https://discord.com/invite/linea', 'disc.svg', '', '', '', 'Discord', 19);
INSERT INTO public.link VALUES (217, 1, 'https://coinmarketcap.com/currencies/linea/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 19);
INSERT INTO public.link VALUES (218, 1, 'https://lineascan.build/', 'scam.png', '', '', '', 'Block Explorer', 19);
INSERT INTO public.link VALUES (219, 1, 'https://defillama.com/chain/Linea', 'defi.png', '', '', '', 'DefiLlama', 19);
INSERT INTO public.link VALUES (220, 1, 'https://dune.com/browse/dashboards?tags=Linea', 'dune.png', '', '', '', 'Dune Analytics', 19);
INSERT INTO public.link VALUES (221, 1, 'https://l2beat.com/scaling/projects/linea', 'l2.png', '', '', '', 'L2 Beat', 19);
INSERT INTO public.link VALUES (222, 2, 'https://www.fuel.network/', '', '#1B97F3', 'globe', 'white', 'Website', 20);
INSERT INTO public.link VALUES (223, 1, 'https://github.com/FuelLabs/fuel-v1-contracts', 'git.svg', '', '', '', 'Github', 20);
INSERT INTO public.link VALUES (224, 2, 'https://docs.fuel.network/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 20);
INSERT INTO public.link VALUES (225, 2, 'https://fuel-labs.ghost.io/', '', '#FFAD64', 'blog', 'white', 'Blog', 20);
INSERT INTO public.link VALUES (226, 1, 'https://www.linkedin.com/company/fuel-labs/', 'linkedin.png', '', '', '', 'Linkedin', 20);
INSERT INTO public.link VALUES (227, 1, 'https://fuellabs.medium.com/', 'medium.webp', '', '', '', 'Medium', 20);
INSERT INTO public.link VALUES (228, 1, 'https://twitter.com/fuel_network', 'twt.svg', '', '', '', 'Twitter', 20);
INSERT INTO public.link VALUES (229, 1, 'https://discord.com/invite/xfpK4Pe', 'disc.svg', '', '', '', 'Discord', 20);
INSERT INTO public.link VALUES (230, 1, 'https://www.youtube.com/channel/UCam2Sj3SvFSAIfDbP-4jWZQ', 'yt.png', '', '', '', 'YouTube', 20);
INSERT INTO public.link VALUES (231, 1, 'https://www.coingecko.com/pt/moedas/fuel-network', 'coingecko.png', '', '', '', 'CoinGecko', 20);
INSERT INTO public.link VALUES (232, 1, 'https://coinmarketcap.com/currencies/fuel-network/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 20);
INSERT INTO public.link VALUES (233, 1, 'https://fuellabs.github.io/block-explorer-v2/beta-4/#/', 'scam.png', '', '', '', 'Block Explorer', 20);
INSERT INTO public.link VALUES (234, 1, 'https://l2beat.com/scaling/projects/fuelv1', 'l2.png', '', '', '', 'L2 Beat', 20);
INSERT INTO public.link VALUES (235, 2, 'https://fuellabs.notion.site/Articles-25490e91c34743e7bb0c53f0d45917b8', '', '#1B97F3', 'newspaper', 'white', 'Artigos', 20);
INSERT INTO public.link VALUES (294, 2, 'https://www.gnosis.io/', '', '#1B97F3', 'globe', 'white', 'Website', 23);
INSERT INTO public.link VALUES (295, 1, 'https://github.com/gnosischain/documentation', 'git.svg', '', '', '', 'Github', 23);
INSERT INTO public.link VALUES (236, 2, 'https://www.notion.so/Podcasts-9f829504cafd4ae5bc7e81d682070965', '', '#FFF1D7', 'microphone-lines', '#1C1B1F', 'Podcasts', 20);
INSERT INTO public.link VALUES (150, 1, 'https://dune.com/Marcov/polygon-zkevm', 'dune.png', '', '', '', 'Dune Analytics', 15);
INSERT INTO public.link VALUES (151, 1, 'https://tokenterminal.com/terminal/projects/polygon-zkevm', 'tokent.png', '', '', '', 'Token Terminal', 15);
INSERT INTO public.link VALUES (237, 2, 'https://polygon.technology/polygon-pos', '', '#1B97F3', 'globe', 'white', 'Website', 21);
INSERT INTO public.link VALUES (238, 1, 'https://github.com/maticnetwork', 'git.svg', '', '', '', 'Github', 21);
INSERT INTO public.link VALUES (239, 2, 'https://wiki.polygon.technology/docs/pos/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 21);
INSERT INTO public.link VALUES (240, 2, 'https://polygon.technology/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 21);
INSERT INTO public.link VALUES (241, 2, 'https://polygon.technology/ecosystem', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 21);
INSERT INTO public.link VALUES (242, 1, 'https://www.instagram.com/0xpolygon/', 'insta.svg', '', '', '', 'Instagram', 21);
INSERT INTO public.link VALUES (243, 1, 'https://t.me/polygonofficial', 'tel.svg', '', '', '', 'Telegram', 21);
INSERT INTO public.link VALUES (244, 1, 'https://www.linkedin.com/company/polygonlabs/', 'linkedin.png', '', '', '', 'Linkedin', 21);
INSERT INTO public.link VALUES (245, 1, 'https://www.reddit.com/r/polygonnetwork/', 'reddit.png', '', '', '', 'Reddit', 21);
INSERT INTO public.link VALUES (246, 1, 'https://polygontech.medium.com/', 'medium.webp', '', '', '', 'Medium', 21);
INSERT INTO public.link VALUES (247, 1, 'https://twitter.com/0xPolygonLabs', 'twt.svg', '', '', '', 'Twitter', 21);
INSERT INTO public.link VALUES (248, 1, 'https://discord.com/invite/0xPolygon', 'disc.svg', '', '', '', 'Discord', 21);
INSERT INTO public.link VALUES (249, 1, 'https://www.coingecko.com/pt/moedas/polygon', 'coingecko.png', '', '', '', 'CoinGecko', 21);
INSERT INTO public.link VALUES (250, 1, 'https://coinmarketcap.com/currencies/polygon/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 21);
INSERT INTO public.link VALUES (251, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AMATICUSDT', 'tradingview.png', '', '', '', 'Tradingview', 21);
INSERT INTO public.link VALUES (252, 1, 'https://www.binance.com/pt-BR/price/polygon', 'binance.png', '', '', '', 'Binance', 21);
INSERT INTO public.link VALUES (253, 1, 'https://www.coinbase.com/pt/price/polygon', 'coinbase.svg', '', '', '', 'Coinbase', 21);
INSERT INTO public.link VALUES (254, 1, 'https://www.kucoin.com/price/MATIC', 'kucoin.png', '', '', '', 'Kucoin', 21);
INSERT INTO public.link VALUES (255, 1, 'https://www.bybit.com/en-US/coin-price/matic-network/', 'bybit.png', '', '', '', 'Bybit', 21);
INSERT INTO public.link VALUES (256, 1, 'https://www.okx.com/pt-br/price/polygon-matic', 'okx.png', '', '', '', 'OKX', 21);
INSERT INTO public.link VALUES (257, 1, 'https://polygonscan.com/', 'scam.png', '', '', '', 'Block Explorer', 21);
INSERT INTO public.link VALUES (258, 1, 'https://skynet.certik.com/projects/matic', 'certik.png', '', '', '', 'Certik', 21);
INSERT INTO public.link VALUES (259, 1, 'https://defillama.com/chain/Polygon', 'defi.png', '', '', '', 'DefiLlama', 21);
INSERT INTO public.link VALUES (260, 1, 'https://messari.io/asset/polygon', 'messari.png', '', '', '', 'Messari', 21);
INSERT INTO public.link VALUES (261, 1, 'https://dune.com/datanut/Polygon-MATIC', 'dune.png', '', '', '', 'Dune Analytics', 21);
INSERT INTO public.link VALUES (262, 1, 'https://tokenterminal.com/terminal/projects/polygon', 'tokent.png', '', '', '', 'Token Terminal', 21);
INSERT INTO public.link VALUES (263, 1, 'https://dappradar.com/rankings/protocol/polygon', 'dapr.png', '', '', '', 'Dappradar', 21);
INSERT INTO public.link VALUES (264, 1, 'https://l2beat.com/bridges/projects/polygon-pos', 'l2.png', '', '', '', 'L2 Beat', 21);
INSERT INTO public.link VALUES (265, 1, 'https://app.bubblemaps.io/eth/token/0x7d1afa7b718fb893db30a3abc0cfc608aacfebb0', 'bubblemaps.png', '', '', '', 'Bubblemaps', 21);
INSERT INTO public.link VALUES (266, 2, 'https://skale.space/', '', '#1B97F3', 'globe', 'white', 'Website', 22);
INSERT INTO public.link VALUES (267, 1, 'https://github.com/skalenetwork', 'git.svg', '', '', '', 'Github', 22);
INSERT INTO public.link VALUES (268, 2, 'https://docs.skale.network/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 22);
INSERT INTO public.link VALUES (269, 2, 'https://skale.space/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 22);
INSERT INTO public.link VALUES (270, 2, 'https://skale.space/ecosystem', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 22);
INSERT INTO public.link VALUES (271, 1, 'https://www.instagram.com/skalenetwork/', 'insta.svg', '', '', '', 'Instagram', 22);
INSERT INTO public.link VALUES (272, 1, 'https://t.me/skaleofficial', 'tel.svg', '', '', '', 'Telegram', 22);
INSERT INTO public.link VALUES (273, 1, 'https://www.linkedin.com/company/skale-labs/', 'linkedin.png', '', '', '', 'Linkedin', 22);
INSERT INTO public.link VALUES (274, 1, 'https://www.reddit.com/r/SKALEnetwork/', 'reddit.png', '', '', '', 'Reddit', 22);
INSERT INTO public.link VALUES (275, 1, 'https://medium.com/skale', 'medium.webp', '', '', '', 'Medium', 22);
INSERT INTO public.link VALUES (276, 1, 'https://twitter.com/SkaleNetwork', 'twt.svg', '', '', '', 'Twitter', 22);
INSERT INTO public.link VALUES (277, 1, 'https://discord.com/invite/gM5XBy6', 'disc.svg', '', '', '', 'Discord', 22);
INSERT INTO public.link VALUES (278, 1, 'https://www.youtube.com/channel/UCpUk0eMmD00C7RXLT0g8SuA', 'yt.png', '', '', '', 'YouTube', 22);
INSERT INTO public.link VALUES (279, 1, 'https://www.coingecko.com/pt/moedas/skale', 'coingecko.png', '', '', '', 'CoinGecko', 22);
INSERT INTO public.link VALUES (280, 1, 'https://coinmarketcap.com/currencies/skale-network/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 22);
INSERT INTO public.link VALUES (281, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3ASKLUSDT', 'tradingview.png', '', '', '', 'Tradingview', 22);
INSERT INTO public.link VALUES (282, 1, 'https://www.binance.com/pt-BR/price/skale-network', 'binance.png', '', '', '', 'Binance', 22);
INSERT INTO public.link VALUES (283, 1, 'https://www.coinbase.com/price/skale', 'coinbase.svg', '', '', '', 'Coinbase', 22);
INSERT INTO public.link VALUES (284, 1, 'https://www.kucoin.com/pt/price/SKL', 'kucoin.png', '', '', '', 'Kucoin', 22);
INSERT INTO public.link VALUES (285, 1, 'https://www.bybit.com/pt-BR/coin-price/skale/', 'bybit.png', '', '', '', 'Bybit', 22);
INSERT INTO public.link VALUES (286, 1, 'https://www.okx.com/pt-br/price/skale-skl', 'okx.png', '', '', '', 'OKX', 22);
INSERT INTO public.link VALUES (287, 1, 'https://elated-tan-skat.explorer.mainnet.skalenodes.com/', 'scam.png', '', '', '', 'Block Explorer', 22);
INSERT INTO public.link VALUES (288, 1, 'https://skynet.certik.com/projects/skale-network', 'certik.png', '', '', '', 'Certik', 22);
INSERT INTO public.link VALUES (289, 1, 'https://messari.io/asset/skale-network', 'messari.png', '', '', '', 'Messari', 22);
INSERT INTO public.link VALUES (290, 1, 'https://dune.com/manel/skale-analytics', 'dune.png', '', '', '', 'Dune Analytics', 22);
INSERT INTO public.link VALUES (291, 1, 'https://dappradar.com/rankings/protocol/skale', 'dapr.png', '', '', '', 'Dappradar', 22);
INSERT INTO public.link VALUES (292, 1, 'https://l2beat.com/bridges/projects/skale-ima', 'l2.png', '', '', '', 'L2 Beat', 22);
INSERT INTO public.link VALUES (293, 1, 'https://app.bubblemaps.io/eth/token/0x00c83aecc790e8a4453e5dd3b0b4b3680501a7a7', 'bubblemaps.png', '', '', '', 'Bubblemaps', 22);
INSERT INTO public.link VALUES (296, 2, 'https://docs.gnosischain.com/node/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 23);
INSERT INTO public.link VALUES (297, 2, 'https://www.gnosis.io/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 23);
INSERT INTO public.link VALUES (298, 2, 'https://gnosischain.world/', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 23);
INSERT INTO public.link VALUES (299, 1, 'https://www.linkedin.com/company/gnosis-limited/?originalSubdomain=gi', 'linkedin.png', '', '', '', 'Linkedin', 23);
INSERT INTO public.link VALUES (300, 1, 'https://www.reddit.com/r/Gnosis_Chain/', 'reddit.png', '', '', '', 'Reddit', 23);
INSERT INTO public.link VALUES (301, 1, 'https://medium.com/@gnosisPM', 'medium.webp', '', '', '', 'Medium', 23);
INSERT INTO public.link VALUES (302, 1, 'https://twitter.com/gnosischain', 'twt.svg', '', '', '', 'Twitter', 23);
INSERT INTO public.link VALUES (303, 1, 'https://discord.com/invite/xW3X5EreBM', 'disc.svg', '', '', '', 'Discord', 23);
INSERT INTO public.link VALUES (304, 1, 'https://www.youtube.com/@GnosisChain', 'yt.png', '', '', '', 'YouTube', 23);
INSERT INTO public.link VALUES (305, 1, 'https://www.coingecko.com/pt/moedas/gnosis', 'coingecko.png', '', '', '', 'CoinGecko', 23);
INSERT INTO public.link VALUES (306, 1, 'https://coinmarketcap.com/pt-br/currencies/gnosis-gno/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 23);
INSERT INTO public.link VALUES (307, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=COINBASE%3AGNOUSD', 'tradingview.png', '', '', '', 'Tradingview', 23);
INSERT INTO public.link VALUES (308, 1, 'https://www.binance.com/pt-BR/price/gnosis-gno', 'binance.png', '', '', '', 'Binance', 23);
INSERT INTO public.link VALUES (309, 1, 'https://www.coinbase.com/price/gnosis-gno', 'coinbase.svg', '', '', '', 'Coinbase', 23);
INSERT INTO public.link VALUES (310, 1, 'https://www.kucoin.com/pt/how-to-buy/gnosis', 'kucoin.png', '', '', '', 'Kucoin', 23);
INSERT INTO public.link VALUES (311, 1, 'https://www.bybit.com/fil-PH/coin-price/gnosis/', 'bybit.png', '', '', '', 'Bybit', 23);
INSERT INTO public.link VALUES (312, 1, 'https://www.okx.com/pt-br/price/gnosis-gno', 'okx.png', '', '', '', 'OKX', 23);
INSERT INTO public.link VALUES (313, 1, 'https://gnosisscan.io/', 'scam.png', '', '', '', 'Block Explorer', 23);
INSERT INTO public.link VALUES (314, 1, 'https://defillama.com/chain/Gnosis', 'defi.png', '', '', '', 'DefiLlama', 23);
INSERT INTO public.link VALUES (315, 1, 'https://messari.io/asset/gnosis', 'messari.png', '', '', '', 'Messari', 23);
INSERT INTO public.link VALUES (316, 1, 'https://dune.com/projects/gnosis', 'dune.png', '', '', '', 'Dune Analytics', 23);
INSERT INTO public.link VALUES (317, 1, 'https://tokenterminal.com/terminal/projects/gnosis-chain', 'tokent.png', '', '', '', 'Token Terminal', 23);
INSERT INTO public.link VALUES (318, 1, 'https://dappradar.com/token/gnosis', 'dapr.png', '', '', '', 'Dappradar', 23);
INSERT INTO public.link VALUES (319, 1, 'https://app.bubblemaps.io/eth/token/0x6810e776880c02933d47db1b9fc05908e5386b96', 'bubblemaps.png', '', '', '', 'Bubblemaps', 23);
INSERT INTO public.link VALUES (320, 2, 'https://loomx.io/', '', '#1B97F3', 'globe', 'white', 'Website', 24);
INSERT INTO public.link VALUES (321, 1, 'https://github.com/loomnetwork', 'git.svg', '', '', '', 'Github', 24);
INSERT INTO public.link VALUES (322, 2, 'https://loomx.io/developers/en/intro-to-loom.html', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 24);
INSERT INTO public.link VALUES (323, 2, 'https://medium.com/loom-network', '', '#FFAD64', 'blog', 'white', 'Blog', 24);
INSERT INTO public.link VALUES (324, 1, 'https://t.me/loomnetwork', 'tel.svg', '', '', '', 'Telegram', 24);
INSERT INTO public.link VALUES (325, 1, 'https://www.linkedin.com/company/loom-network/about/', 'linkedin.png', '', '', '', 'Linkedin', 24);
INSERT INTO public.link VALUES (326, 1, 'https://www.reddit.com/r/loomnetwork/', 'reddit.png', '', '', '', 'Reddit', 24);
INSERT INTO public.link VALUES (327, 1, 'https://medium.com/loom-network', 'medium.webp', '', '', '', 'Medium', 24);
INSERT INTO public.link VALUES (328, 1, 'https://twitter.com/loomnetwork', 'twt.svg', '', '', '', 'Twitter', 24);
INSERT INTO public.link VALUES (329, 1, 'https://www.youtube.com/playlist?list=PLUMwusiHZZhqpMWurLKbQga603J6GclWY', 'yt.png', '', '', '', 'YouTube', 24);
INSERT INTO public.link VALUES (330, 1, 'https://www.coingecko.com/pt/moedas/loom-network-old', 'coingecko.png', '', '', '', 'CoinGecko', 24);
INSERT INTO public.link VALUES (331, 1, 'https://coinmarketcap.com/pt-br/currencies/loom-network/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 24);
INSERT INTO public.link VALUES (332, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3ALOOMUSDT', 'tradingview.png', '', '', '', 'Tradingview', 24);
INSERT INTO public.link VALUES (333, 1, 'https://www.binance.com/pt-BR/price/loom-network', 'binance.png', '', '', '', 'Binance', 24);
INSERT INTO public.link VALUES (334, 1, 'https://www.coinbase.com/price/loom-network', 'coinbase.svg', '', '', '', 'Coinbase', 24);
INSERT INTO public.link VALUES (335, 1, 'https://www.kucoin.com/pt/price/LOOM', 'kucoin.png', '', '', '', 'Kucoin', 24);
INSERT INTO public.link VALUES (336, 1, 'https://www.bybit.com/pt-BR/coin-price/loom-network-new/', 'bybit.png', '', '', '', 'Bybit', 24);
INSERT INTO public.link VALUES (337, 1, 'https://etherscan.io/token/0x42476f744292107e34519f9c357927074ea3f75d#balances', 'scam.png', '', '', '', 'Block Explorer', 24);
INSERT INTO public.link VALUES (338, 1, 'https://messari.io/asset/loom-network', 'messari.png', '', '', '', 'Messari', 24);
INSERT INTO public.link VALUES (339, 1, 'https://dappradar.com/token/loom-network', 'dapr.png', '', '', '', 'Dappradar', 24);
INSERT INTO public.link VALUES (340, 1, 'https://app.bubblemaps.io/eth/token/0x42476f744292107e34519f9c357927074ea3f75d', 'bubblemaps.png', '', '', '', 'Bubblemaps', 24);
INSERT INTO public.link VALUES (341, 2, 'https://loopring.org/#/', '', '#1B97F3', 'globe', 'white', 'Website', 25);
INSERT INTO public.link VALUES (342, 1, 'https://github.com/Loopring/protocols', 'git.svg', '', '', '', 'Github', 25);
INSERT INTO public.link VALUES (343, 2, 'https://github.com/Loopring/protocols/blob/master/packages/loopring_v3/DESIGN.md', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 25);
INSERT INTO public.link VALUES (344, 2, 'https://loopring.org/#/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 25);
INSERT INTO public.link VALUES (345, 1, 'https://www.linkedin.com/company/loopring/', 'linkedin.png', '', '', '', 'Linkedin', 25);
INSERT INTO public.link VALUES (346, 1, 'https://www.reddit.com/r/loopringorg/', 'reddit.png', '', '', '', 'Reddit', 25);
INSERT INTO public.link VALUES (347, 1, 'https://medium.loopring.io/', 'medium.webp', '', '', '', 'Medium', 25);
INSERT INTO public.link VALUES (348, 1, 'https://twitter.com/loopringorg', 'twt.svg', '', '', '', 'Twitter', 25);
INSERT INTO public.link VALUES (349, 1, 'https://discord.com/invite/KkYccYp', 'disc.svg', '', '', '', 'Discord', 25);
INSERT INTO public.link VALUES (350, 1, 'https://www.youtube.com/c/loopring', 'yt.png', '', '', '', 'YouTube', 25);
INSERT INTO public.link VALUES (351, 1, 'https://www.coingecko.com/pt/moedas/loopring', 'coingecko.png', '', '', '', 'CoinGecko', 25);
INSERT INTO public.link VALUES (352, 1, 'https://coinmarketcap.com/pt-br/currencies/loopring/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 25);
INSERT INTO public.link VALUES (353, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=COINBASE%3ALRCUSD', 'tradingview.png', '', '', '', 'Tradingview', 25);
INSERT INTO public.link VALUES (354, 1, 'https://www.binance.com/pt-BR/price/loopring', 'binance.png', '', '', '', 'Binance', 25);
INSERT INTO public.link VALUES (355, 1, 'https://www.coinbase.com/price/loopring', 'coinbase.svg', '', '', '', 'Coinbase', 25);
INSERT INTO public.link VALUES (356, 1, 'https://www.kucoin.com/pt/price/LRC', 'kucoin.png', '', '', '', 'Kucoin', 25);
INSERT INTO public.link VALUES (357, 1, 'https://www.bybit.com/pt-BR/coin-price/loopring/', 'bybit.png', '', '', '', 'Bybit', 25);
INSERT INTO public.link VALUES (358, 1, 'https://www.okx.com/pt-br/price/loopring-lrc', 'okx.png', '', '', '', 'OKX', 25);
INSERT INTO public.link VALUES (359, 1, 'https://explorer.loopring.io/', 'scam.png', '', '', '', 'Block Explorer', 25);
INSERT INTO public.link VALUES (360, 1, 'https://skynet.certik.com/projects/loopring', 'certik.png', '', '', '', 'Certik', 25);
INSERT INTO public.link VALUES (361, 1, 'https://defillama.com/protocol/loopring', 'defi.png', '', '', '', 'DefiLlama', 25);
INSERT INTO public.link VALUES (362, 1, 'https://messari.io/asset/loopring', 'messari.png', '', '', '', 'Messari', 25);
INSERT INTO public.link VALUES (363, 1, 'https://dune.com/Brecht/loopring', 'dune.png', '', '', '', 'Dune Analytics', 25);
INSERT INTO public.link VALUES (364, 1, 'https://tokenterminal.com/terminal/projects/loopring', 'tokent.png', '', '', '', 'Token Terminal', 25);
INSERT INTO public.link VALUES (365, 1, 'https://dappradar.com/dapp/loopring', 'dapr.png', '', '', '', 'Dappradar', 25);
INSERT INTO public.link VALUES (366, 1, 'https://l2beat.com/scaling/projects/loopring', 'l2.png', '', '', '', 'L2 Beat', 25);
INSERT INTO public.link VALUES (367, 1, 'https://app.bubblemaps.io/eth/token/0xbbbbca6a901c926f240b89eacb641d8aec7aeafd', 'bubblemaps.png', '', '', '', 'Bubblemaps', 25);
INSERT INTO public.link VALUES (368, 2, 'https://roninchain.com/', '', '#1B97F3', 'globe', 'white', 'Website', 26);
INSERT INTO public.link VALUES (369, 2, 'https://docs.roninchain.com/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 26);
INSERT INTO public.link VALUES (370, 2, 'https://blog.roninchain.com/', '', '#FFAD64', 'blog', 'white', 'Blog', 26);
INSERT INTO public.link VALUES (371, 2, 'https://roninchain.com/ecosystem', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 26);
INSERT INTO public.link VALUES (372, 1, 'https://www.linkedin.com/company/skymavis/', 'linkedin.png', '', '', '', 'Linkedin', 26);
INSERT INTO public.link VALUES (373, 1, 'https://twitter.com/Ronin_Network', 'twt.svg', '', '', '', 'Twitter', 26);
INSERT INTO public.link VALUES (374, 1, 'https://discord.com/invite/roninnetwork', 'disc.svg', '', '', '', 'Discord', 26);
INSERT INTO public.link VALUES (375, 1, 'https://www.coingecko.com/pt/moedas/ronin', 'coingecko.png', '', '', '', 'CoinGecko', 26);
INSERT INTO public.link VALUES (376, 1, 'https://coinmarketcap.com/pt-br/currencies/ronin/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 26);
INSERT INTO public.link VALUES (377, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=OKX%3ARONUSDT', 'tradingview.png', '', '', '', 'Tradingview', 26);
INSERT INTO public.link VALUES (378, 1, 'https://www.binance.com/pt-BR/price/ronin', 'binance.png', '', '', '', 'Binance', 26);
INSERT INTO public.link VALUES (379, 1, 'https://www.coinbase.com/price/ronin', 'coinbase.svg', '', '', '', 'Coinbase', 26);
INSERT INTO public.link VALUES (380, 1, 'https://www.kucoin.com/pt/how-to-buy/ronin', 'kucoin.png', '', '', '', 'Kucoin', 26);
INSERT INTO public.link VALUES (381, 1, 'https://www.bybit.com/pt-BR/coin-price/ronin/', 'bybit.png', '', '', '', 'Bybit', 26);
INSERT INTO public.link VALUES (382, 1, 'https://www.okx.com/pt-br/price/ronin-network-ron', 'okx.png', '', '', '', 'OKX', 26);
INSERT INTO public.link VALUES (383, 1, 'https://app.roninchain.com/', 'scam.png', '', '', '', 'Block Explorer', 26);
INSERT INTO public.link VALUES (384, 1, 'https://skynet.certik.com/projects/ronin-network', 'certik.png', '', '', '', 'Certik', 26);
INSERT INTO public.link VALUES (385, 1, 'https://defillama.com/chain/Ronin', 'defi.png', '', '', '', 'DefiLlama', 26);
INSERT INTO public.link VALUES (386, 1, 'https://messari.io/asset/ronin', 'messari.png', '', '', '', 'Messari', 26);
INSERT INTO public.link VALUES (387, 1, 'https://dune.com/Messari_Jack/ronin', 'dune.png', '', '', '', 'Dune Analytics', 26);
INSERT INTO public.link VALUES (388, 1, 'https://tokenterminal.com/terminal/projects/ronin', 'tokent.png', '', '', '', 'Token Terminal', 26);
INSERT INTO public.link VALUES (389, 1, 'https://dappradar.com/rankings/protocol/ronin', 'dapr.png', '', '', '', 'Dappradar', 26);
INSERT INTO public.link VALUES (390, 1, 'https://l2beat.com/bridges/projects/ronin', 'l2.png', '', '', '', 'L2 Beat', 26);
INSERT INTO public.link VALUES (391, 1, 'https://app.bubblemaps.io/eth/token/0x23f043426b2336e723b32fb3bf4a1ca410f7c49a', 'bubblemaps.png', '', '', '', 'Bubblemaps', 26);
INSERT INTO public.link VALUES (393, 2, 'https://about.core.app/', '', '#1B97F3', 'globe', 'white', 'Website', 27);
INSERT INTO public.link VALUES (394, 1, 'https://github.com/ava-labs', 'git.svg', '', '', '', 'Github', 27);
INSERT INTO public.link VALUES (395, 2, 'https://support.avax.network/en/collections/3391518-core', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 27);
INSERT INTO public.link VALUES (396, 2, 'https://core.app/discover/projects/all/', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 27);
INSERT INTO public.link VALUES (397, 1, 'https://t.me/avalancheavax', 'tel.svg', '', '', '', 'Telegram', 27);
INSERT INTO public.link VALUES (398, 1, 'https://www.linkedin.com/company/avalancheavax/', 'linkedin.png', '', '', '', 'Linkedin', 27);
INSERT INTO public.link VALUES (399, 1, 'https://www.reddit.com/r/Avax/', 'reddit.png', '', '', '', 'Reddit', 27);
INSERT INTO public.link VALUES (400, 1, 'https://medium.com/@coreapp', 'medium.webp', '', '', '', 'Medium', 27);
INSERT INTO public.link VALUES (401, 1, 'https://twitter.com/coreapp', 'twt.svg', '', '', '', 'Twitter', 27);
INSERT INTO public.link VALUES (402, 1, 'https://discord.com/invite/RwXY7P6', 'disc.svg', '', '', '', 'Discord', 27);
INSERT INTO public.link VALUES (403, 1, 'https://www.youtube.com/avalancheavax', 'yt.png', '', '', '', 'YouTube', 27);
INSERT INTO public.link VALUES (404, 1, 'https://chrome.google.com/webstore/detail/core-crypto-wallet-nft-ex/agoakfejjabomempkjlepdflaleeobhb', 'store.png', '', '', '', 'Extenção', 27);
INSERT INTO public.link VALUES (405, 1, 'https://play.google.com/store/apps/details?id=com.avaxwallet', 'playstore.png', '', '', '', 'App', 27);
INSERT INTO public.link VALUES (406, 1, 'https://subnets.avax.network/', 'scam.png', '', '', '', 'Block Explorer', 27);
INSERT INTO public.link VALUES (407, 1, 'https://dune.com/nadimchamoun/Avalanche-Bridge', 'dune.png', '', '', '', 'Dune Analytics', 27);
INSERT INTO public.link VALUES (408, 1, 'https://l2beat.com/bridges/projects/avalanche', 'l2.png', '', '', '', 'L2 Beat', 27);
INSERT INTO public.link VALUES (409, 2, 'https://hop.exchange/', '', '#1B97F3', 'globe', 'white', 'Website', 28);
INSERT INTO public.link VALUES (410, 1, 'https://github.com/hop-protocol', 'git.svg', '', '', '', 'Github', 28);
INSERT INTO public.link VALUES (411, 2, 'https://docs.hop.exchange/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 28);
INSERT INTO public.link VALUES (412, 2, 'https://help.hop.exchange/hc/en-us', '', '#FFAD64', 'blog', 'white', 'Blog', 28);
INSERT INTO public.link VALUES (413, 2, 'https://forum.hop.exchange/', '', '#5865F2', 'newspaper', 'white', 'Forum', 28);
INSERT INTO public.link VALUES (414, 1, 'https://www.linkedin.com/company/hop-protocol/', 'linkedin.png', '', '', '', 'Linkedin', 28);
INSERT INTO public.link VALUES (415, 1, 'https://medium.com/hop-protocol', 'medium.webp', '', '', '', 'Medium', 28);
INSERT INTO public.link VALUES (416, 1, 'https://twitter.com/HopProtocol', 'twt.svg', '', '', '', 'Twitter', 28);
INSERT INTO public.link VALUES (417, 1, 'https://discord.com/invite/PwCF88emV4', 'disc.svg', '', '', '', 'Discord', 28);
INSERT INTO public.link VALUES (418, 1, 'https://www.youtube.com/watch?v=rzU95Yr5sg0', 'yt.png', '', '', '', 'YouTube', 28);
INSERT INTO public.link VALUES (419, 1, 'https://www.coingecko.com/pt/moedas/hop-protocol', 'coingecko.png', '', '', '', 'CoinGecko', 28);
INSERT INTO public.link VALUES (420, 1, 'https://coinmarketcap.com/pt-br/currencies/hop-exchange/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 28);
INSERT INTO public.link VALUES (421, 1, 'https://www.tradingview.com/symbols/HOPUSDT/', 'tradingview.png', '', '', '', 'Tradingview', 28);
INSERT INTO public.link VALUES (422, 1, 'https://www.binance.com/pt-BR/price/hop-exchange', 'binance.png', '', '', '', 'Binance', 28);
INSERT INTO public.link VALUES (423, 1, 'https://www.coinbase.com/price/hop-exchange', 'coinbase.svg', '', '', '', 'Coinbase', 28);
INSERT INTO public.link VALUES (424, 1, 'https://www.kucoin.com/how-to-buy/hop-protocol', 'kucoin.png', '', '', '', 'Kucoin', 28);
INSERT INTO public.link VALUES (425, 1, 'https://www.bybit.com/pt-BR/coin-price/hop-protocol/', 'bybit.png', '', '', '', 'Bybit', 28);
INSERT INTO public.link VALUES (426, 1, 'https://www.okx.com/pt-br/price/hop-protocol-hop', 'okx.png', '', '', '', 'OKX', 28);
INSERT INTO public.link VALUES (427, 1, 'https://explorer.hop.exchange/', 'scam.png', '', '', '', 'Block Explorer', 28);
INSERT INTO public.link VALUES (428, 1, 'https://skynet.certik.com/projects/hop-exchange', 'certik.png', '', '', '', 'Certik', 28);
INSERT INTO public.link VALUES (429, 1, 'https://defillama.com/protocol/hop-protocol', 'defi.png', '', '', '', 'DefiLlama', 28);
INSERT INTO public.link VALUES (430, 1, 'https://messari.io/asset/hop-protocol', 'messari.png', '', '', '', 'Messari', 28);
INSERT INTO public.link VALUES (431, 1, 'https://dune.com/rchen8/Hop-Exchange', 'dune.png', '', '', '', 'Dune Analytics', 28);
INSERT INTO public.link VALUES (432, 1, 'existe mas não abre', 'tokent.png', '', '', '', 'Token Terminal', 28);
INSERT INTO public.link VALUES (433, 1, 'https://dappradar.com/dapp/hop-protocol', 'dapr.png', '', '', '', 'Dappradar', 28);
INSERT INTO public.link VALUES (434, 1, 'https://l2beat.com/bridges/projects/hop', 'l2.png', '', '', '', 'L2 Beat', 28);
INSERT INTO public.link VALUES (435, 1, 'https://app.bubblemaps.io/poly/token/0xc5102fe9359fd9a28f877a67e36b0f050d81a3cc', 'bubblemaps.png', '', '', '', 'Bubblemaps', 28);
INSERT INTO public.link VALUES (436, 2, 'https://rainbowbridge.app/transfer', '', '#1B97F3', 'bridge', 'white', 'Ponte', 29);
INSERT INTO public.link VALUES (437, 2, 'https://near.org/', '', '#1B97F3', 'globe', 'white', 'Website', 29);
INSERT INTO public.link VALUES (438, 1, 'https://github.com/aurora-is-near/rainbow-bridge', 'git.svg', '', '', '', 'Github', 29);
INSERT INTO public.link VALUES (439, 2, 'https://rainbowbridge.app/faq', '', '#1C1B1F', 'file-lines', 'white', 'FAQ', 29);
INSERT INTO public.link VALUES (440, 1, 'https://t.me/auroraisnear', 'tel.svg', '', '', '', 'Telegram', 29);
INSERT INTO public.link VALUES (441, 1, 'https://medium.com/aurora-platform', 'medium.webp', '', '', '', 'Medium', 29);
INSERT INTO public.link VALUES (442, 1, 'https://twitter.com/auroraisnear', 'twt.svg', '', '', '', 'Twitter', 29);
INSERT INTO public.link VALUES (443, 1, 'https://discord.com/invite/dEFJBz8HQV', 'disc.svg', '', '', '', 'Discord', 29);
INSERT INTO public.link VALUES (444, 1, 'https://www.youtube.com/channel/UC5inYyvUO10iL65hBPFtpvg', 'yt.png', '', '', '', 'YouTube', 29);
INSERT INTO public.link VALUES (445, 1, 'https://explorer.aurora.dev/', 'scam.png', '', '', '', 'Block Explorer', 29);
INSERT INTO public.link VALUES (446, 1, 'https://defillama.com/bridge/rainbow-bridge', 'defi.png', '', '', '', 'DefiLlama', 29);
INSERT INTO public.link VALUES (447, 1, 'https://dune.com/zavodil/rainbow-bridge', 'dune.png', '', '', '', 'Dune Analytics', 29);
INSERT INTO public.link VALUES (448, 1, 'https://dappradar.com/dapp/rainbow-bridge', 'dapr.png', '', '', '', 'Dappradar', 29);
INSERT INTO public.link VALUES (449, 1, 'https://l2beat.com/bridges/projects/near', 'l2.png', '', '', '', 'L2 Beat', 29);
INSERT INTO public.link VALUES (392, 2, 'https://core.app/bridge/', '', '#1B97F3', 'bridge', 'white', 'Ponte', 27);
INSERT INTO public.link VALUES (450, 1, 'https://tokeninsight.com/en/coins/cartesi/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 11);
INSERT INTO public.link VALUES (451, 1, 'https://tokeninsight.com/en/coins/arbitrum/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 13);
INSERT INTO public.link VALUES (452, 1, 'https://tokeninsight.com/en/coins/optimism/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 14);
INSERT INTO public.link VALUES (453, 1, 'https://tokeninsight.com/en/coins/polygon/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 15);
INSERT INTO public.link VALUES (454, 1, 'https://tokeninsight.com/en/coins/polygon/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 21);
INSERT INTO public.link VALUES (455, 1, 'https://tokeninsight.com/en/coins/starknet/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 16);
INSERT INTO public.link VALUES (456, 1, 'https://tokeninsight.com/en/coins/skale-network/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 22);
INSERT INTO public.link VALUES (457, 1, 'https://tokeninsight.com/en/coins/gnosis/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 23);
INSERT INTO public.link VALUES (458, 1, 'https://tokeninsight.com/en/coins/loom-network/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 24);
INSERT INTO public.link VALUES (459, 1, 'https://tokeninsight.com/en/coins/loopring/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 25);
INSERT INTO public.link VALUES (460, 1, 'https://tokeninsight.com/en/coins/ronin/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 26);
INSERT INTO public.link VALUES (461, 1, 'https://tokeninsight.com/en/coins/hop-protocolhop/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 28);
INSERT INTO public.link VALUES (462, 1, 'https://cer.live/cryptocurrency-security-ratings/cartesi', 'certfied.png', '', '', '', 'Certfied', 11);
INSERT INTO public.link VALUES (463, 1, 'https://cer.live/cryptocurrency-security-ratings/optimism', 'certfied.png', '', '', '', 'Certfied', 14);
INSERT INTO public.link VALUES (464, 1, 'https://cer.live/cryptocurrency-security-ratings/matic-network', 'certfied.png', '', '', '', 'Certfied', 21);
INSERT INTO public.link VALUES (465, 1, 'https://cer.live/cryptocurrency-security-ratings/skale', 'certfied.png', '', '', '', 'Certfied', 22);
INSERT INTO public.link VALUES (466, 1, 'https://cer.live/cryptocurrency-security-ratings/gnosis', 'certfied.png', '', '', '', 'Certfied', 23);
INSERT INTO public.link VALUES (467, 1, 'https://cer.live/cryptocurrency-security-ratings/loopring', 'certfied.png', '', '', '', 'Certfied', 25);
INSERT INTO public.link VALUES (468, 1, 'https://cer.live/cryptocurrency-security-ratings/hop-protocol', 'certfied.png', '', '', '', 'Certfied', 28);
INSERT INTO public.link VALUES (469, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0x491604c0fdf08347dd1fa4ee062a822a5dd06b5d', 'cyber.png', '', '', '', 'Cyberscan', 11);
INSERT INTO public.link VALUES (470, 1, 'https://www.cyberscope.io/cyberscan?network=ARBITRUM&address=0x912CE59144191C1204E64559FE8253a0e49E6548', 'cyber.png', '', '', '', 'Cyberscan', 13);
INSERT INTO public.link VALUES (471, 1, 'https://www.cyberscope.io/cyberscan?network=OPTIMISM&address=0x4200000000000000000000000000000000000042', 'cyber.png', '', '', '', 'Cyberscan', 14);
INSERT INTO public.link VALUES (472, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0xca14007eff0db1f8135f4c25b34de49ab0d42766', 'cyber.png', '', '', '', 'Cyberscan', 16);
INSERT INTO public.link VALUES (473, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0', 'cyber.png', '', '', '', 'Cyberscan', 21);
INSERT INTO public.link VALUES (474, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0x00c83aecc790e8a4453e5dd3b0b4b3680501a7a7', 'cyber.png', '', '', '', 'Cyberscan', 22);
INSERT INTO public.link VALUES (475, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0x6810e776880c02933d47db1b9fc05908e5386b96', 'cyber.png', '', '', '', 'Cyberscan', 23);
INSERT INTO public.link VALUES (476, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0x42476F744292107e34519F9c357927074Ea3F75D', 'cyber.png', '', '', '', 'Cyberscan', 24);
INSERT INTO public.link VALUES (477, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0xbbbbca6a901c926f240b89eacb641d8aec7aeafd', 'cyber.png', '', '', '', 'Cyberscan', 25);
INSERT INTO public.link VALUES (478, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0xc5102fe9359fd9a28f877a67e36b0f050d81a3cc', 'cyber.png', '', '', '', 'Cyberscan', 28);
INSERT INTO public.link VALUES (479, 2, 'https://www.kchannels.io/', '', '#1B97F3', 'globe', 'white', 'Website', 30);
INSERT INTO public.link VALUES (480, 1, 'https://github.com/kchannelz/kchannels', 'git.svg', '', '', '', 'Github', 30);
INSERT INTO public.link VALUES (481, 2, 'https://docs.kchannels.io/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 30);
INSERT INTO public.link VALUES (482, 1, 'https://t.me/kchannels', 'tel.svg', '', '', '', 'Telegram', 30);
INSERT INTO public.link VALUES (483, 1, 'https://medium.com/kchannels', 'medium.webp', '', '', '', 'Medium', 30);
INSERT INTO public.link VALUES (484, 1, 'https://x.com/kchannelsio', 'twt.svg', '', '', '', 'Twitter', 30);
INSERT INTO public.link VALUES (485, 1, 'https://etherscan.io/address/0xbd9425Dd654DBb1E1804430df5723c279A0A86b7', 'scam.png', '', '', '', 'Block Explorer', 30);
INSERT INTO public.link VALUES (486, 2, 'https://wormhole.com', '', '#1B97F3', 'globe', 'white', 'Website', 31);
INSERT INTO public.link VALUES (487, 1, 'https://github.com/wormhole-foundation', 'git.svg', '', '', '', 'Github', 31);
INSERT INTO public.link VALUES (488, 2, 'https://docs.wormhole.com/wormhole', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 31);
INSERT INTO public.link VALUES (489, 2, 'https://wormhole.com/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 31);
INSERT INTO public.link VALUES (490, 2, 'https://wormhole.com/ecosystem/multichain-apps', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 31);
INSERT INTO public.link VALUES (491, 1, 'https://t.me/wormholecrypto', 'tel.svg', '', '', '', 'Telegram', 31);
INSERT INTO public.link VALUES (492, 1, 'https://twitter.com/wormhole', 'twt.svg', '', '', '', 'Twitter', 31);
INSERT INTO public.link VALUES (493, 1, 'https://discord.com/invite/wormholecrypto', 'disc.svg', '', '', '', 'Discord', 31);
INSERT INTO public.link VALUES (494, 1, 'https://www.youtube.com/@wormholecrypto', 'yt.png', '', '', '', 'YouTube', 31);
INSERT INTO public.link VALUES (495, 1, 'https://www.coingecko.com/pt/moedas/wormhole', 'coingecko.png', '', '', '', 'CoinGecko', 31);
INSERT INTO public.link VALUES (496, 1, 'https://coinmarketcap.com/currencies/wormhole/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 31);
INSERT INTO public.link VALUES (497, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AWUSDT', 'tradingview.png', '', '', '', 'Tradingview', 31);
INSERT INTO public.link VALUES (498, 1, 'https://www.binance.com/en/trade/W_USDT?type=spot', 'binance.png', '', '', '', 'Binance', 31);
INSERT INTO public.link VALUES (499, 1, 'https://www.coinbase.com/en-br/price/wormhole', 'coinbase.svg', '', '', '', 'Coinbase', 31);
INSERT INTO public.link VALUES (500, 1, 'https://www.kucoin.com/price/W', 'kucoin.png', '', '', '', 'Kucoin', 31);
INSERT INTO public.link VALUES (501, 1, 'https://www.bybit.com/en/coin-price/wormhole/', 'bybit.png', '', '', '', 'Bybit', 31);
INSERT INTO public.link VALUES (502, 1, 'https://www.okx.com/pt-br/price/wormhole-w', 'okx.png', '', '', '', 'OKX', 31);
INSERT INTO public.link VALUES (503, 1, 'https://solscan.io/token/85VBFQZC9TZkfaptBWjvUw7YbZjy52A6mjtPGjstQAmQ', 'scam.png', '', '', '', 'Block Explorer', 31);
INSERT INTO public.link VALUES (504, 1, 'https://skynet.certik.com/projects/wormhole', 'certik.png', '', '', '', 'Certik', 31);
INSERT INTO public.link VALUES (505, 1, 'https://messari.io/project/wormhole', 'messari.png', '', '', '', 'Messari', 31);
INSERT INTO public.link VALUES (506, 1, 'https://dune.com/discover/content/relevant?q=wormhole', 'dune.png', '', '', '', 'Dune Analytics', 31);
INSERT INTO public.link VALUES (507, 1, 'https://dappradar.com/dapp/wormhole', 'dapr.png', '', '', '', 'Dappradar', 31);
INSERT INTO public.link VALUES (508, 1, 'https://l2beat.com/bridges/projects/portal', 'l2.png', '', '', '', 'L2 Beat', 31);
INSERT INTO public.link VALUES (509, 1, 'https://app.bubblemaps.io/sol/token/85VBFQZC9TZkfaptBWjvUw7YbZjy52A6mjtPGjstQAmQ', 'bubblemaps.png', '', '', '', 'Bubblemaps', 31);
INSERT INTO public.link VALUES (510, 1, 'https://tokeninsight.com/en/coins/wormhole-w/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 31);
INSERT INTO public.link VALUES (511, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0xB0fFa8000886e57F86dd5264b9582b2Ad87b2b91', 'cyber.png', '', '', '', 'Cyberscan', 31);
INSERT INTO public.link VALUES (512, 2, 'https://perun.network/use-cases/', '', '#1B97F3', 'globe', 'white', 'Website', 32);
INSERT INTO public.link VALUES (513, 1, 'https://github.com/perun-network/go-perun', 'git.svg', '', '', '', 'Github', 32);
INSERT INTO public.link VALUES (514, 2, 'https://labs.hyperledger.org/perun-doc/introduction.html', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 32);
INSERT INTO public.link VALUES (515, 1, 'https://www.linkedin.com/company/perun-network/', 'linkedin.png', '', '', '', 'Linkedin', 32);
INSERT INTO public.link VALUES (516, 1, 'https://medium.com/@perun.editor', 'medium.webp', '', '', '', 'Medium', 32);
INSERT INTO public.link VALUES (517, 1, 'https://twitter.com/PolyCrypt_', 'twt.svg', '', '', '', 'Twitter', 32);
INSERT INTO public.link VALUES (518, 1, 'https://discord.com/invite/HdSUC6djEx', 'disc.svg', '', '', '', 'Discord', 32);
INSERT INTO public.link VALUES (519, 2, 'https://raiden.network/', '', '#1B97F3', 'globe', 'white', 'Website', 33);
INSERT INTO public.link VALUES (520, 1, 'https://github.com/raiden-network/raiden/?fref=ts', 'git.svg', '', '', '', 'Github', 33);
INSERT INTO public.link VALUES (521, 2, 'https://raiden-network.readthedocs.io/en/latest/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 33);
INSERT INTO public.link VALUES (522, 2, 'https://raiden.network/101.html', '', '#FFAD64', 'blog', 'white', 'Blog', 33);
INSERT INTO public.link VALUES (523, 2, 'https://developer.raiden.network/#Examples', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 33);
INSERT INTO public.link VALUES (524, 1, 'https://www.reddit.com/r/raidennetwork/', 'reddit.png', '', '', '', 'Reddit', 33);
INSERT INTO public.link VALUES (525, 1, 'https://medium.com/raiden-network', 'medium.webp', '', '', '', 'Medium', 33);
INSERT INTO public.link VALUES (526, 1, 'https://twitter.com/raiden_network', 'twt.svg', '', '', '', 'Twitter', 33);
INSERT INTO public.link VALUES (527, 1, 'https://discord.com/invite/nSQDQBq5FC', 'disc.svg', '', '', '', 'Discord', 33);
INSERT INTO public.link VALUES (528, 1, 'https://www.youtube.com/channel/UCoUP_hnjUddEvbxmtNCcApg', 'yt.png', '', '', '', 'YouTube', 33);
INSERT INTO public.link VALUES (529, 1, 'https://www.coingecko.com/pt/moedas/raiden-network', 'coingecko.png', '', '', '', 'CoinGecko', 33);
INSERT INTO public.link VALUES (530, 1, 'https://coinmarketcap.com/currencies/raiden-network-token/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 33);
INSERT INTO public.link VALUES (531, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=GATEIO%3ARDNUSDT', 'tradingview.png', '', '', '', 'Tradingview', 33);
INSERT INTO public.link VALUES (532, 1, 'https://etherscan.io/token/0x255aa6df07540cb5d3d297f0d0d4d84cb52bc8e6', 'scam.png', '', '', '', 'Block Explorer', 33);
INSERT INTO public.link VALUES (533, 1, 'https://skynet.certik.com/projects/raiden-network', 'certik.png', '', '', '', 'Certik', 33);
INSERT INTO public.link VALUES (534, 1, 'https://messari.io/project/raiden-network', 'messari.png', '', '', '', 'Messari', 33);
INSERT INTO public.link VALUES (535, 1, 'https://dune.com/discover/content/relevant?q=raiden%20network', 'dune.png', '', '', '', 'Dune Analytics', 33);
INSERT INTO public.link VALUES (536, 1, 'https://dappradar.com/token/raiden-network', 'dapr.png', '', '', '', 'Dappradar', 33);
INSERT INTO public.link VALUES (537, 1, 'https://app.bubblemaps.io/eth/token/0x255aa6df07540cb5d3d297f0d0d4d84cb52bc8e6', 'bubblemaps.png', '', '', '', 'Bubblemaps', 33);
INSERT INTO public.link VALUES (538, 1, 'https://tokeninsight.com/en/coins/raiden-network-tokenrdn/overview', 'tokeninsight.webp', '', '', '', 'TokenInsight', 33);
INSERT INTO public.link VALUES (539, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0x255aa6df07540cb5d3d297f0d0d4d84cb52bc8e6', 'cyber.png', '', '', '', 'Cyberscan', 33);
INSERT INTO public.link VALUES (540, 2, 'https://docs.statechannels.org/', '', '#1B97F3', 'globe', 'white', 'Website', 34);
INSERT INTO public.link VALUES (541, 1, 'https://github.com/statechannels/go-nitro', 'git.svg', '', '', '', 'Github', 34);
INSERT INTO public.link VALUES (542, 2, 'https://docs.statechannels.org/protocol-tutorial/0010-states-channels/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 34);
INSERT INTO public.link VALUES (543, 2, 'https://docs.statechannels.org/faqs/', '', '#FFAD64', 'blog', 'white', 'FAQ', 34);
INSERT INTO public.link VALUES (544, 2, 'https://docs.statechannels.org/research-papers/', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 34);
INSERT INTO public.link VALUES (545, 1, 'https://twitter.com/statechannels', 'twt.svg', '', '', '', 'Twitter', 34);
INSERT INTO public.link VALUES (546, 1, 'https://www.youtube.com/watch?v=NpG0NneZ5uk', 'yt.png', '', '', '', 'YouTube', 34);
INSERT INTO public.link VALUES (547, 2, 'https://stargate.finance/', '', '#1B97F3', 'globe', 'white', 'Website', 35);
INSERT INTO public.link VALUES (548, 1, 'https://github.com/stargate-protocol', 'git.svg', '', '', '', 'Github', 35);
INSERT INTO public.link VALUES (549, 2, 'https://stargateprotocol.gitbook.io/stargate/v/v2-user-docs', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 35);
INSERT INTO public.link VALUES (550, 1, 'https://t.me/joinchat/LEM0ELklmO1kODdh', 'tel.svg', '', '', '', 'Telegram', 35);
INSERT INTO public.link VALUES (551, 1, 'https://medium.com/stargate-official', 'medium.webp', '', '', '', 'Medium', 35);
INSERT INTO public.link VALUES (552, 1, 'https://twitter.com/StargateFinance', 'twt.svg', '', '', '', 'Twitter', 35);
INSERT INTO public.link VALUES (553, 1, 'https://stargate.finance/discord', 'disc.svg', '', '', '', 'Discord', 35);
INSERT INTO public.link VALUES (554, 1, 'https://www.youtube.com/watch?v=BKoVmubhfeg', 'yt.png', '', '', '', 'YouTube', 35);
INSERT INTO public.link VALUES (555, 1, 'https://www.coingecko.com/pt/moedas/stargate-finance', 'coingecko.png', '', '', '', 'CoinGecko', 35);
INSERT INTO public.link VALUES (556, 1, 'https://coinmarketcap.com/currencies/stargate-finance/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 35);
INSERT INTO public.link VALUES (557, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3ASTGUSDT', 'tradingview.png', '', '', '', 'Tradingview', 35);
INSERT INTO public.link VALUES (558, 1, 'https://www.binance.com/pt-BR/price/stargate-finance', 'binance.png', '', '', '', 'Binance', 35);
INSERT INTO public.link VALUES (559, 1, 'https://www.coinbase.com/pt-br/price/stargate-finance', 'coinbase.svg', '', '', '', 'Coinbase', 35);
INSERT INTO public.link VALUES (560, 1, 'https://www.kucoin.com/pt/trade/STG-USDT', 'kucoin.png', '', '', '', 'Kucoin', 35);
INSERT INTO public.link VALUES (561, 1, 'https://www.bybit.com/en/trade/spot/STG/USDT', 'bybit.png', '', '', '', 'Bybit', 35);
INSERT INTO public.link VALUES (562, 1, 'https://stargate.finance/overview', 'scam.png', '', '', '', 'Block Explorer', 35);
INSERT INTO public.link VALUES (563, 1, 'https://skynet.certik.com/projects/stargate-finance', 'certik.png', '', '', '', 'Certik', 35);
INSERT INTO public.link VALUES (564, 1, 'https://defillama.com/protocol/stargate-finance#information', 'defi.png', '', '', '', 'DefiLlama', 35);
INSERT INTO public.link VALUES (565, 1, 'https://messari.io/project/stargate-finance', 'messari.png', '', '', '', 'Messari', 35);
INSERT INTO public.link VALUES (566, 1, 'https://dune.com/stargate-finance', 'dune.png', '', '', '', 'Dune Analytics', 35);
INSERT INTO public.link VALUES (567, 1, 'https://tokenterminal.com/terminal/projects/stargate', 'tokent.png', '', '', '', 'Token Terminal', 35);
INSERT INTO public.link VALUES (568, 1, 'https://dappradar.com/dapp/stargate', 'dapr.png', '', '', '', 'Dappradar', 35);
INSERT INTO public.link VALUES (569, 1, 'https://l2beat.com/bridges/projects/stargatev2', 'l2.png', '', '', '', 'L2 Beat', 35);
INSERT INTO public.link VALUES (570, 1, 'https://app.bubblemaps.io/eth/token/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6', 'bubblemaps.png', '', '', '', 'Bubblemaps', 35);
INSERT INTO public.link VALUES (571, 2, 'https://satellite.money/', '', '#1B97F3', 'globe', 'white', 'Website', 36);
INSERT INTO public.link VALUES (572, 1, 'https://github.com/axelarnetwork/axelar-examples', 'git.svg', '', '', '', 'Github', 36);
INSERT INTO public.link VALUES (573, 2, 'https://docs.axelar.dev/resources/contract-addresses/mainnet', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 36);
INSERT INTO public.link VALUES (574, 1, 'https://t.me/axelarcommunity', 'tel.svg', '', '', '', 'Telegram', 36);
INSERT INTO public.link VALUES (575, 1, 'https://www.linkedin.com/company/axelarnetwork/', 'linkedin.png', '', '', '', 'Linkedin', 36);
INSERT INTO public.link VALUES (576, 1, 'https://medium.com/axelar/transfer-terra-assets-to-evm-chains-using-satellite-f6480c7ff20c', 'medium.webp', '', '', '', 'Medium', 36);
INSERT INTO public.link VALUES (577, 1, 'https://twitter.com/axl_satellite', 'twt.svg', '', '', '', 'Twitter', 36);
INSERT INTO public.link VALUES (578, 1, 'https://discord.com/invite/aRZ3Ra6f7D', 'disc.svg', '', '', '', 'Discord', 36);
INSERT INTO public.link VALUES (579, 1, 'https://www.youtube.com/watch?v=D7ooheNAvB0', 'yt.png', '', '', '', 'YouTube', 36);
INSERT INTO public.link VALUES (580, 1, 'https://axelarscan.io/', 'scam.png', '', '', '', 'Block Explorer', 36);
INSERT INTO public.link VALUES (581, 1, 'https://l2beat.com/bridges/projects/satellite', 'l2.png', '', '', '', 'L2 Beat', 36);
INSERT INTO public.link VALUES (582, 2, 'https://scroll.io/', '', '#1B97F3', 'globe', 'white', 'Website', 37);
INSERT INTO public.link VALUES (583, 1, 'https://github.com/scroll-tech/zkevm-circuits', 'git.svg', '', '', '', 'Github', 37);
INSERT INTO public.link VALUES (584, 2, 'https://docs.scroll.io/en/home/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 37);
INSERT INTO public.link VALUES (585, 2, 'https://scroll.io/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 37);
INSERT INTO public.link VALUES (586, 2, 'https://scroll.io/ecosystem', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 37);
INSERT INTO public.link VALUES (587, 1, 'https://twitter.com/Scroll_ZKP', 'twt.svg', '', '', '', 'Twitter', 37);
INSERT INTO public.link VALUES (588, 1, 'https://discord.com/invite/scroll', 'disc.svg', '', '', '', 'Discord', 37);
INSERT INTO public.link VALUES (589, 1, 'https://www.youtube.com/@Scroll_ZKP', 'yt.png', '', '', '', 'YouTube', 37);
INSERT INTO public.link VALUES (590, 1, 'https://coinmarketcap.com/currencies/scroll/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 37);
INSERT INTO public.link VALUES (591, 1, 'https://scrollscan.com/', 'scam.png', '', '', '', 'Block Explorer', 37);
INSERT INTO public.link VALUES (592, 1, 'https://skynet.certik.com/projects/scroll', 'certik.png', '', '', '', 'Certik', 37);
INSERT INTO public.link VALUES (593, 1, 'https://defillama.com/chain/Scroll', 'defi.png', '', '', '', 'DefiLlama', 37);
INSERT INTO public.link VALUES (594, 1, 'https://messari.io/project/scroll/profile', 'messari.png', '', '', '', 'Messari', 37);
INSERT INTO public.link VALUES (595, 1, 'https://dune.com/scroll', 'dune.png', '', '', '', 'Dune Analytics', 37);
INSERT INTO public.link VALUES (596, 1, 'https://tokenterminal.com/terminal/projects/scroll', 'tokent.png', '', '', '', 'Token Terminal', 37);
INSERT INTO public.link VALUES (597, 1, 'https://l2beat.com/scaling/projects/scroll', 'l2.png', '', '', '', 'L2 Beat', 37);
INSERT INTO public.link VALUES (598, 2, 'https://www.immutable.com/', '', '#1B97F3', 'globe', 'white', 'Website', 38);
INSERT INTO public.link VALUES (599, 2, 'https://docs.immutable.com/?_gl=1*ui9jak*_ga*NDQ2MDcwMzguMTcyNDAyNTg3OQ..*_ga_7XM4Y7T8YC*MTcyNDAyNTg5OC4xLjEuMTcyNDAyNjA0Ni4wLjAuMA..', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 38);
INSERT INTO public.link VALUES (600, 2, 'https://www.immutable.com/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 38);
INSERT INTO public.link VALUES (601, 2, 'https://www.immutable.com/ecosystem', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 38);
INSERT INTO public.link VALUES (602, 1, 'https://www.instagram.com/lifeatimmutable/', 'insta.svg', '', '', '', 'Instagram', 38);
INSERT INTO public.link VALUES (603, 1, 'https://www.linkedin.com/company/immutable-1/', 'linkedin.png', '', '', '', 'Linkedin', 38);
INSERT INTO public.link VALUES (604, 1, 'https://www.reddit.com/r/ImmutableX/', 'reddit.png', '', '', '', 'Reddit', 38);
INSERT INTO public.link VALUES (605, 1, 'https://twitter.com/Immutable', 'twt.svg', '', '', '', 'Twitter', 38);
INSERT INTO public.link VALUES (606, 1, 'https://discord.com/invite/CYsjMdctsP', 'disc.svg', '', '', '', 'Discord', 38);
INSERT INTO public.link VALUES (607, 1, 'https://www.youtube.com/channel/UCR_WlrGou7hm0ACXYpldcuA/featured', 'yt.png', '', '', '', 'YouTube', 38);
INSERT INTO public.link VALUES (608, 1, 'https://www.coingecko.com/pt/moedas/immutable-x', 'coingecko.png', '', '', '', 'CoinGecko', 38);
INSERT INTO public.link VALUES (609, 1, 'https://coinmarketcap.com/currencies/immutable-x/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 38);
INSERT INTO public.link VALUES (610, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AIMXUSDT', 'tradingview.png', '', '', '', 'Tradingview', 38);
INSERT INTO public.link VALUES (611, 1, 'https://www.binance.com/pt-BR/price/immutable-x', 'binance.png', '', '', '', 'Binance', 38);
INSERT INTO public.link VALUES (612, 1, 'https://www.coinbase.com/en-br/price/immutable', 'coinbase.svg', '', '', '', 'Coinbase', 38);
INSERT INTO public.link VALUES (613, 1, 'https://www.kucoin.com/pt/price/IMX', 'kucoin.png', '', '', '', 'Kucoin', 38);
INSERT INTO public.link VALUES (614, 1, 'https://www.bybit.com/pt-BR/coin-price/immutable-x/', 'bybit.png', '', '', '', 'Bybit', 38);
INSERT INTO public.link VALUES (615, 1, 'https://www.okx.com/pt-br/buy-imx#sourceQuote=brl', 'okx.png', '', '', '', 'OKX', 38);
INSERT INTO public.link VALUES (616, 1, 'https://etherscan.io/token/0xf57e7e7c23978c3caec3c3548e3d615c346e79ff', 'scam.png', '', '', '', 'Block Explorer', 38);
INSERT INTO public.link VALUES (617, 1, 'https://skynet.certik.com/projects/immutable-x', 'certik.png', '', '', '', 'Certik', 38);
INSERT INTO public.link VALUES (618, 1, 'https://defillama.com/protocol/immutablex#information', 'defi.png', '', '', '', 'DefiLlama', 38);
INSERT INTO public.link VALUES (619, 1, 'https://messari.io/project/immutable', 'messari.png', '', '', '', 'Messari', 38);
INSERT INTO public.link VALUES (620, 1, 'https://dune.com/lydiapita/immutableximx-token-analysis', 'dune.png', '', '', '', 'Dune Analytics', 38);
INSERT INTO public.link VALUES (621, 1, 'https://tokenterminal.com/terminal/projects/immutable', 'tokent.png', '', '', '', 'Token Terminal', 38);
INSERT INTO public.link VALUES (622, 1, 'https://dappradar.com/token/immutable-x', 'dapr.png', '', '', '', 'Dappradar', 38);
INSERT INTO public.link VALUES (623, 1, 'https://l2beat.com/scaling/projects/immutablex', 'l2.png', '', '', '', 'L2 Beat', 38);
INSERT INTO public.link VALUES (624, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0xf57e7e7c23978c3caec3c3548e3d615c346e79ff', 'cyber.png', '', '', '', 'Cyberscan', 38);
INSERT INTO public.link VALUES (625, 2, 'https://www.apex.exchange/', '', '#1B97F3', 'globe', 'white', 'Website', 39);
INSERT INTO public.link VALUES (626, 1, 'https://github.com/ApeX-Protocol', 'git.svg', '', '', '', 'Github', 39);
INSERT INTO public.link VALUES (627, 2, 'https://apex-pro.gitbook.io/apex-pro', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 39);
INSERT INTO public.link VALUES (628, 2, 'https://www.apex.exchange/blog', '', '#FFAD64', 'blog', 'white', 'Blog', 39);
INSERT INTO public.link VALUES (629, 1, 'https://t.me/ApeXdex', 'tel.svg', '', '', '', 'Telegram', 39);
INSERT INTO public.link VALUES (630, 1, 'https://www.linkedin.com/company/apexprotocol', 'linkedin.png', '', '', '', 'Linkedin', 39);
INSERT INTO public.link VALUES (631, 1, 'https://apexdex.medium.com/', 'medium.webp', '', '', '', 'Medium', 39);
INSERT INTO public.link VALUES (632, 1, 'https://twitter.com/OfficialApeXdex', 'twt.svg', '', '', '', 'Twitter', 39);
INSERT INTO public.link VALUES (633, 1, 'https://discord.com/invite/366Puqavwx', 'disc.svg', '', '', '', 'Discord', 39);
INSERT INTO public.link VALUES (634, 1, 'https://www.youtube.com/@apexprotocol', 'yt.png', '', '', '', 'YouTube', 39);
INSERT INTO public.link VALUES (635, 1, 'https://www.coingecko.com/pt/moedas/apex-token', 'coingecko.png', '', '', '', 'CoinGecko', 39);
INSERT INTO public.link VALUES (636, 1, 'https://coinmarketcap.com/currencies/apex-token/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 39);
INSERT INTO public.link VALUES (637, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BYBIT%3AAPEXUSDT', 'tradingview.png', '', '', '', 'Tradingview', 39);
INSERT INTO public.link VALUES (638, 1, 'https://www.binance.com/pt-BR/price/apex-token', 'binance.png', '', '', '', 'Binance', 39);
INSERT INTO public.link VALUES (639, 1, 'https://www.coinbase.com/en-br/price/apex-token', 'coinbase.svg', '', '', '', 'Coinbase', 39);
INSERT INTO public.link VALUES (640, 1, 'https://www.kucoin.com/price/APEX', 'kucoin.png', '', '', '', 'Kucoin', 39);
INSERT INTO public.link VALUES (641, 1, 'https://www.bybit.com/pt-BR/trade/spot/APEX/USDT', 'bybit.png', '', '', '', 'Bybit', 39);
INSERT INTO public.link VALUES (642, 1, 'https://etherscan.io/token/0x52A8845DF664D76C69d2EEa607CD793565aF42B8', 'scam.png', '', '', '', 'Block Explorer', 39);
INSERT INTO public.link VALUES (643, 1, 'https://skynet.certik.com/projects/apex-token', 'certik.png', '', '', '', 'Certik', 39);
INSERT INTO public.link VALUES (644, 1, 'https://defillama.com/protocol/apex-protocol#information', 'defi.png', '', '', '', 'DefiLlama', 39);
INSERT INTO public.link VALUES (645, 1, 'https://messari.io/project/apex-token', 'messari.png', '', '', '', 'Messari', 39);
INSERT INTO public.link VALUES (646, 1, 'https://tokenterminal.com/terminal/projects/apex', 'tokent.png', '', '', '', 'Token Terminal', 39);
INSERT INTO public.link VALUES (647, 1, 'https://dappradar.com/token/apex-token-2', 'dapr.png', '', '', '', 'Dappradar', 39);
INSERT INTO public.link VALUES (648, 1, 'https://l2beat.com/scaling/projects/apex', 'l2.png', '', '', '', 'L2 Beat', 39);
INSERT INTO public.link VALUES (649, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0x52A8845DF664D76C69d2EEa607CD793565aF42B8', 'cyber.png', '', '', '', 'Cyberscan', 39);
INSERT INTO public.link VALUES (650, 2, 'https://rhino.fi/', '', '#1B97F3', 'globe', 'white', 'Website', 40);
INSERT INTO public.link VALUES (651, 1, 'https://github.com/rhinofi', 'git.svg', '', '', '', 'Github', 40);
INSERT INTO public.link VALUES (652, 2, 'https://tech.rhino.fi/rhino.fi', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 40);
INSERT INTO public.link VALUES (653, 2, 'https://rhino.fi/blog/', '', '#FFAD64', 'blog', 'white', 'Blog', 40);
INSERT INTO public.link VALUES (654, 1, 'https://www.linkedin.com/company/rhinofi/', 'linkedin.png', '', '', '', 'Linkedin', 40);
INSERT INTO public.link VALUES (655, 1, 'https://twitter.com/rhinofi', 'twt.svg', '', '', '', 'Twitter', 40);
INSERT INTO public.link VALUES (656, 1, 'https://discord.com/invite/26sXx2KAhy', 'disc.svg', '', '', '', 'Discord', 40);
INSERT INTO public.link VALUES (657, 1, 'https://www.youtube.com/@rhinofi', 'yt.png', '', '', '', 'YouTube', 40);
INSERT INTO public.link VALUES (658, 1, 'https://www.coingecko.com/pt/moedas/rhinofi', 'coingecko.png', '', '', '', 'CoinGecko', 40);
INSERT INTO public.link VALUES (659, 1, 'https://coinmarketcap.com/currencies/deversifi/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 40);
INSERT INTO public.link VALUES (660, 1, 'https://skynet.certik.com/projects/deversifi', 'certik.png', '', '', '', 'Certik', 40);
INSERT INTO public.link VALUES (661, 1, 'https://defillama.com/protocol/rhino.fi#information', 'defi.png', '', '', '', 'DefiLlama', 40);
INSERT INTO public.link VALUES (662, 1, 'https://messari.io/project/rhino-fi/charts/market', 'messari.png', '', '', '', 'Messari', 40);
INSERT INTO public.link VALUES (663, 1, 'https://dappradar.com/dapp/rhino-fi', 'dapr.png', '', '', '', 'Dappradar', 40);
INSERT INTO public.link VALUES (664, 1, 'https://l2beat.com/scaling/projects/rhinofi', 'l2.png', '', '', '', 'L2 Beat', 40);
INSERT INTO public.link VALUES (665, 1, 'https://www.cyberscope.io/cyberscan?network=ETH&address=0xdddddd4301a082e62e84e43f474f044423921918', 'cyber.png', '', '', '', 'Cyberscan', 40);
INSERT INTO public.link VALUES (666, 2, 'https://kroma.network/', '', '#1B97F3', 'globe', 'white', 'Website', 41);
INSERT INTO public.link VALUES (667, 1, 'https://github.com/kroma-network/', 'git.svg', '', '', '', 'Github', 41);
INSERT INTO public.link VALUES (668, 2, 'https://docs.kroma.network/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 41);
INSERT INTO public.link VALUES (669, 2, 'https://kroma.network/ecosystem/all', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 41);
INSERT INTO public.link VALUES (670, 1, 'https://blog.kroma.network/', 'medium.webp', '', '', '', 'Medium', 41);
INSERT INTO public.link VALUES (671, 1, 'https://twitter.com/kroma_network', 'twt.svg', '', '', '', 'Twitter', 41);
INSERT INTO public.link VALUES (672, 1, 'https://discord.com/invite/kroma-network', 'disc.svg', '', '', '', 'Discord', 41);
INSERT INTO public.link VALUES (673, 1, 'https://www.coingecko.com/pt/moedas/kroma', 'coingecko.png', '', '', '', 'CoinGecko', 41);
INSERT INTO public.link VALUES (674, 1, 'https://coinmarketcap.com/currencies/kroma/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 41);
INSERT INTO public.link VALUES (675, 1, 'https://kromascan.com/', 'scam.png', '', '', '', 'Block Explorer', 41);
INSERT INTO public.link VALUES (676, 1, 'https://skynet.certik.com/projects/kroma-network', 'certik.png', '', '', '', 'Certik', 41);
INSERT INTO public.link VALUES (677, 1, 'https://defillama.com/chain/Kroma', 'defi.png', '', '', '', 'DefiLlama', 41);
INSERT INTO public.link VALUES (678, 1, 'https://dappradar.com/chain/kroma', 'dapr.png', '', '', '', 'Dappradar', 41);
INSERT INTO public.link VALUES (679, 1, 'https://l2beat.com/scaling/projects/kroma', 'l2.png', '', '', '', 'L2 Beat', 41);
INSERT INTO public.link VALUES (680, 2, 'https://zora.energy/', '', '#1B97F3', 'globe', 'white', 'Website', 42);
INSERT INTO public.link VALUES (681, 1, 'https://github.com/ourzora/optimism', 'git.svg', '', '', '', 'Github', 42);
INSERT INTO public.link VALUES (682, 2, 'https://docs.zora.co/zora-network/intro', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 42);
INSERT INTO public.link VALUES (683, 2, 'https://zora.energy/universe', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 42);
INSERT INTO public.link VALUES (684, 1, 'https://www.instagram.com/our.zora', 'insta.svg', '', '', '', 'Instagram', 42);
INSERT INTO public.link VALUES (685, 1, 'https://twitter.com/ourZORA', 'twt.svg', '', '', '', 'Twitter', 42);
INSERT INTO public.link VALUES (686, 1, 'https://discord.com/invite/Va58aMrcwk', 'disc.svg', '', '', '', 'Discord', 42);
INSERT INTO public.link VALUES (687, 1, 'https://www.coingecko.com/pt/chains/zora-network', 'coingecko.png', '', '', '', 'CoinGecko', 42);
INSERT INTO public.link VALUES (688, 1, 'https://coinmarketcap.com/nft/collections/eth/0xabefbc9fd2f806065b4f3c237d4b59d9a97bcac7/Zora/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 42);
INSERT INTO public.link VALUES (689, 1, 'https://zora.superscan.network/', 'scam.png', '', '', '', 'Block Explorer', 42);
INSERT INTO public.link VALUES (690, 1, 'https://skynet.certik.com/projects/zora?utm_source=DropsTab', 'certik.png', '', '', '', 'Certik', 42);
INSERT INTO public.link VALUES (691, 1, 'https://defillama.com/protocol/zora#information', 'defi.png', '', '', '', 'DefiLlama', 42);
INSERT INTO public.link VALUES (692, 1, 'https://dappradar.com/dapp/zora', 'dapr.png', '', '', '', 'Dappradar', 42);
INSERT INTO public.link VALUES (693, 1, 'https://l2beat.com/scaling/projects/zora', 'l2.png', '', '', '', 'L2 Beat', 42);
INSERT INTO public.link VALUES (694, 2, 'https://www.aevo.xyz/', '', '#1B97F3', 'globe', 'white', 'Website', 43);
INSERT INTO public.link VALUES (695, 1, 'https://github.com/aevoxyz', 'git.svg', '', '', '', 'Github', 43);
INSERT INTO public.link VALUES (696, 2, 'https://docs.aevo.xyz/', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 43);
INSERT INTO public.link VALUES (697, 2, 'https://aevo.mirror.xyz/', '', '#FFAD64', 'blog', 'white', 'Blog', 43);
INSERT INTO public.link VALUES (698, 1, 'https://twitter.com/aevoxyz', 'twt.svg', '', '', '', 'Twitter', 43);
INSERT INTO public.link VALUES (699, 1, 'https://discord.com/invite/aevo', 'disc.svg', '', '', '', 'Discord', 43);
INSERT INTO public.link VALUES (700, 1, 'https://www.coingecko.com/en/exchanges/aevo', 'coingecko.png', '', '', '', 'CoinGecko', 43);
INSERT INTO public.link VALUES (701, 1, 'https://coinmarketcap.com/currencies/aevo/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 43);
INSERT INTO public.link VALUES (702, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AAEVOUSDT', 'tradingview.png', '', '', '', 'Tradingview', 43);
INSERT INTO public.link VALUES (703, 1, 'https://www.binance.com/pt/price/aevo', 'binance.png', '', '', '', 'Binance', 43);
INSERT INTO public.link VALUES (704, 1, 'https://www.coinbase.com/pt-br/price/aevo', 'coinbase.svg', '', '', '', 'Coinbase', 43);
INSERT INTO public.link VALUES (705, 1, 'https://www.kucoin.com/pt/price/AEVO', 'kucoin.png', '', '', '', 'Kucoin', 43);
INSERT INTO public.link VALUES (706, 1, 'https://www.bybit.com/pt-BR/trade/spot-m/AEVO/USDT', 'bybit.png', '', '', '', 'Bybit', 43);
INSERT INTO public.link VALUES (707, 1, 'https://www.okx.com/pt-br/trade-spot/aevo-usdt', 'okx.png', '', '', '', 'OKX', 43);
INSERT INTO public.link VALUES (708, 1, 'https://explorer.aevo.xyz/', 'scam.png', '', '', '', 'Block Explorer', 43);
INSERT INTO public.link VALUES (709, 1, 'https://skynet.certik.com/projects/aevo', 'certik.png', '', '', '', 'Certik', 43);
INSERT INTO public.link VALUES (710, 1, 'https://defillama.com/protocol/aevo', 'defi.png', '', '', '', 'DefiLlama', 43);
INSERT INTO public.link VALUES (711, 1, 'https://tokenterminal.com/terminal/projects/ribbon-finance', 'tokent.png', '', '', '', 'Token Terminal', 43);
INSERT INTO public.link VALUES (712, 1, 'https://dappradar.com/token/aevo-exchange', 'dapr.png', '', '', '', 'Dappradar', 43);
INSERT INTO public.link VALUES (713, 1, 'https://l2beat.com/scaling/projects/aevo', 'l2.png', '', '', '', 'L2 Beat', 43);
INSERT INTO public.link VALUES (714, 2, 'https://pacific.manta.network/', '', '#1B97F3', 'globe', 'white', 'Website', 44);
INSERT INTO public.link VALUES (715, 1, 'https://github.com/Manta-Network', 'git.svg', '', '', '', 'Github', 44);
INSERT INTO public.link VALUES (716, 2, 'https://docs.manta.network/docs/Introduction', '', '#1C1B1F', 'file-lines', 'white', 'Documentação', 44);
INSERT INTO public.link VALUES (717, 2, 'https://manta.network/ecosystem.html', '', '#5865F2', 'cubes', 'white', 'Ecossistema', 44);
INSERT INTO public.link VALUES (718, 1, 'https://www.t.me/mantanetworkofficial', 'tel.svg', '', '', '', 'Telegram', 44);
INSERT INTO public.link VALUES (719, 1, 'https://mantanetwork.medium.com/', 'medium.webp', '', '', '', 'Medium', 44);
INSERT INTO public.link VALUES (720, 1, 'https://twitter.com/MantaNetwork', 'twt.svg', '', '', '', 'Twitter', 44);
INSERT INTO public.link VALUES (721, 1, 'https://discord.com/invite/mantanetwork', 'disc.svg', '', '', '', 'Discord', 44);
INSERT INTO public.link VALUES (722, 1, 'https://www.youtube.com/@MantaNetwork', 'yt.png', '', '', '', 'YouTube', 44);
INSERT INTO public.link VALUES (723, 1, 'https://www.coingecko.com/pt/chains/manta', 'coingecko.png', '', '', '', 'CoinGecko', 44);
INSERT INTO public.link VALUES (724, 1, 'https://coinmarketcap.com/currencies/manta-network/', 'coinmarketcap.png', '', '', '', 'Coinmarketcap', 44);
INSERT INTO public.link VALUES (725, 1, 'https://br.tradingview.com/chart/7pfHPWW1/?symbol=BINANCE%3AMANTAUSDT', 'tradingview.png', '', '', '', 'Tradingview', 44);
INSERT INTO public.link VALUES (726, 1, 'https://www.binance.com/pt-BR/trade/MANTA_USDT', 'binance.png', '', '', '', 'Binance', 44);
INSERT INTO public.link VALUES (727, 1, 'https://www.coinbase.com/pt-br/price/manta-network', 'coinbase.svg', '', '', '', 'Coinbase', 44);
INSERT INTO public.link VALUES (728, 1, 'https://www.kucoin.com/pt/price/MANTA', 'kucoin.png', '', '', '', 'Kucoin', 44);
INSERT INTO public.link VALUES (729, 1, 'https://www.bybit.com/pt-BR/trade/spot-m/MANTA/USDT', 'bybit.png', '', '', '', 'Bybit', 44);
INSERT INTO public.link VALUES (730, 1, 'https://pacific-explorer.manta.network/', 'scam.png', '', '', '', 'Block Explorer', 44);
INSERT INTO public.link VALUES (731, 1, 'https://skynet.certik.com/projects/manta-network', 'certik.png', '', '', '', 'Certik', 44);
INSERT INTO public.link VALUES (732, 1, 'https://defillama.com/chain/Manta', 'defi.png', '', '', '', 'DefiLlama', 44);
INSERT INTO public.link VALUES (733, 1, 'https://messari.io/project/manta-network', 'messari.png', '', '', '', 'Messari', 44);
INSERT INTO public.link VALUES (734, 1, 'https://dune.com/zkresearch/manta-pacific', 'dune.png', '', '', '', 'Dune Analytics', 44);
INSERT INTO public.link VALUES (735, 1, 'https://tokenterminal.com/terminal/projects/manta', 'tokent.png', '', '', '', 'Token Terminal', 44);
INSERT INTO public.link VALUES (736, 1, 'https://l2beat.com/scaling/projects/mantapacific', 'l2.png', '', '', '', 'L2 Beat', 44);


--
-- TOC entry 2927 (class 0 OID 49631)
-- Dependencies: 208
-- Data for Name: melhoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.melhoria VALUES (20, 'Adicionar TVL, Volume, Valor de Mercado e Nota de segurança', '', '::ffff:192.168.1.5', '2023-09-15 00:32:38', 2, 'Adicionar TVL, Volume, Valor de Mercado e Nota de segurança nas plataformas, visando incluir algumas informações relevantes sobre o ecossistema');
INSERT INTO public.melhoria VALUES (21, 'Adicionar mais Blockchains', '', '::ffff:192.168.1.5', '2023-09-15 00:33:18', 2, 'Adicionar outras blockchains como Bitcoin, Gnosis e Near etc. Para incluir nas tags');
INSERT INTO public.melhoria VALUES (22, 'Adicionar endereços nas redes', '', '::ffff:192.168.1.5', '2023-09-15 00:34:10', 2, 'Adicionar endereços ao passar o mouse sobre as tags, se possivel tambem um link direto para a blockchain');


--
-- TOC entry 2937 (class 0 OID 49710)
-- Dependencies: 218
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations VALUES (1, 1693316633366, '$npmConfigName1693316633366');
INSERT INTO public.migrations VALUES (2, 1693318436106, '$npmConfigName1693318436106');
INSERT INTO public.migrations VALUES (3, 1693538974276, ' $npmConfigName1693538974276');
INSERT INTO public.migrations VALUES (4, 1693677543432, ' $npmConfigName1693677543432');
INSERT INTO public.migrations VALUES (5, 1694226309877, ' $npmConfigName1694226309877');
INSERT INTO public.migrations VALUES (6, 1695322473137, ' $npmConfigName1695322473137');


--
-- TOC entry 2935 (class 0 OID 49676)
-- Dependencies: 216
-- Data for Name: plataforma; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.plataforma VALUES (24, 'Loom', 'Loom Network é uma plataforma de interoperabilidade multichain que entrou em operação no início de 2018. Essencialmente projetada para dimensionar dApps de alto desempenho, proporcionando aos usuários uma experiência ágil e livre de complicações. A rede simplifica a integração de novos usuários, eliminando a necessidade de baixar software de carteira criptografada. Além disso, a Loom Network se destaca por suas integrações com importantes blockchains, incluindo Bitcoin, Ethereum, Binance Chain e Tron. Isso permite que os desenvolvedores incorporem ativos de várias redes e ofereçam seus dApps em todas as plataformas simultaneamente. ', 'loom.png', 1, 2, '2588', 'BINANCE:LOOMUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=LOOM&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Loom" height="350px"></iframe>', NULL);
INSERT INTO public.plataforma VALUES (13, 'Arbitrum', 'Arbitrum é uma tecnologia de escalabilidade blockchain que promete revolucionar o ecossistema Ethereum. Por meio da técnica de Optimistic Rollup, ela viabiliza o processamento ágil e econômico de transações, aliviando congestões e taxas elevadas na rede. Isso abre caminho para contratos inteligentes mais acessíveis e eficazes, representando um avanço notável rumo à adoção em larga escala da tecnologia blockchain. Com sua capacidade de transformar a experiência de usuários e desenvolvedores, a Arbitrum se destaca como uma das principais soluções de escalabilidade para a blockchain Ethereum.', 'arbitrum.png', 1, 3, '11841', 'COINBASE:ARBUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=ARB&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Arbitrum" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Arbitrum?" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (29, 'Rainbow Bridge', 'Rainbow Bridge é a ponte oficial que permite a transferência de tokens entre as redes Ethereum, NEAR e Aurora. Ela é um produto desenvolvido pela rede Aurora, uma solução de escalonamento compatível com Ethereum baseada em NEAR. A ponte possibilita a movimentação de tokens entre essas três redes, envolvendo uma ou duas transações, dependendo da direção escolhida. Transferências para NEAR e Aurora são concluídas com uma única transação em até 10 minutos, enquanto transferências para Ethereum exigem duas transações e podem levar até 8 horas.', 'rainbow.jpg', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.plataforma VALUES (27, 'Core', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College. it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College.', 'core.png', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.plataforma VALUES (11, 'Cartesi', 'Cartesi é uma plataforma capaz de combinar a eficiência das práticas de desenvolvimento convencionais com a tecnologia blockchain. Ela oferece uma solução de escalabilidade para o desenvolvimento e implantação de aplicativos descentralizados. O grande diferencial da Cartesi é permitir que os desenvolvedores construam DApps complexos e intensivos usando linguagens de programação familiares. Além disso, a Cartesi oferece soluções de Rollup Otimista que podem ser implantadas em diferentes blockchains, como Ethereum, Optimism e Arbitrum.', 'cartesi.webp', 1, 3, '5444', 'KRAKEN:CTSIUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=CTSI&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Cartesi" height="350px"></iframe>', NULL);
INSERT INTO public.plataforma VALUES (26, 'Ronin', 'Ronin é uma blockchain EVM voltada para jogos, lançada pela empresa Sky Mavis, criadora do renomado jogo Axie Infinity. A plataforma se destaca por suas transações quase instantâneas e taxas praticamente nulas, proporcionando uma experiência de jogo imersiva, eficiente e acessível. Esses atributos fazem da Ronin a escolha perfeita para desenvolvedores que buscam criar jogos Web3 de alto desempenho, onde a escalabilidade, eficiência, inovação e qualidade são fundamentais para a satisfação dos usuários.', 'ronin.png', 1, 2, '14101', 'CRYPTO:RONUSD', '', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Ronin" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (28, 'Hop', 'O Hop Protocol, lançado em 2021 por Christopher Whinfrey, é uma aplicação de ponte de tokens que se destaca por sua eficiência e segurança. Com suporte para diversas redes, incluindo Arbitrum, Optimism e Ethereum, o protocolo permite transferências quase instantâneas de criptomoedas populares entre rollups ou sidechains, eliminando a necessidade de aguardar períodos de desafio de rede. Sua ênfase na segurança e eficiência o torna uma solução confiável para casos de uso de interoperabilidade em blockchain.', 'hop.jpeg', 1, 1, '20547', 'BITGET:HOPUSDT', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=HOP&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Hop%20Protocol" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/protocol/hop-protocol" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (22, 'Skale', 'Skale Network é uma plataforma multichain altamente escalável que representa uma solução robusta e segura para superar os desafios de escalabilidade da Ethereum. Em contraste com outras redes, a SKALE adota uma arquitetura flexível que suporta uma crescente diversidade de cadeias específicas para aplicativos descentralizados (dApps). Essa plataforma utiliza a rede principal Ethereum para aprimorar a segurança e a confiabilidade global, permitindo que os desenvolvedores executem seus dApps em cadeias dedicadas e de alta velocidade, sem se preocuparem com as limitações de gás. ', 'skale.png', 1, 2, '5691', 'BINANCE:SKLUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=SKL&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Skale" height="350px"></iframe>', NULL);
INSERT INTO public.plataforma VALUES (15, 'Polygon zkEVM', 'Polygon zkEVM é uma nova solução descentralizada de escalabilidade Ethereum Layer 2 que usa provas criptográficas de conhecimento zero para oferecer validade e finalidade rápida para computação de transações fora da cadeia principal, também conhecida como ZK- Rollup. O ZK-Rollup executa contratos inteligentes de forma transparente, publicando provas de validade de conhecimento zero, enquanto mantém a compatibilidade do opcode com a Máquina Virtual Ethereum.', 'polzk.png', 1, 4, '3890', 'BINANCE:MATICUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=MATIC&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Polygon" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Polygon%20zkEVM" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (14, 'Optimism', 'Optimism é uma blockchain de segunda camada desenvolvida para melhorar a escalabilidade da rede Ethereum através da implementação de rollups otimistas. Essa abordagem possibilita efetuar o registro de transações com eficiência e confiança, uma vez que mantém a segurança fornecida pela rede principal. O projeto é liderado pela Optimism Foundation, uma organização sem fins lucrativos, e enfatiza princípios essenciais como simplicidade, pragmatismo e sustentabilidade em sua arquitetura.', 'op.png', 1, 3, '11840', 'BINANCE:OPUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=OP&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Optimism" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Optimism" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (19, 'Linea', 'Linea representa uma inovação significativa como Camada 2 (L2), surgindo como a evolução do ConsenSys zkEVM, com foco em proporcionar escalabilidade e eficiência para a rede Ethereum. Essa plataforma utiliza a tecnologia de ZK-Rollup e permite que tanto desenvolvedores quanto usuários tenham acesso simplificado a aplicativos descentralizados (dapps) por meio da carteira MetaMask, capacitando assim, o surgimento de uma nova geração de desenvolvedores e aplicativos descentralizados na indústria web3.', 'linea.png', 1, 4, NULL, NULL, NULL, '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Linea" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (17, 'Era zkSync', 'A tecnologia zkSync Era, da Matter Labs, é uma plataforma zk-rollup de uso geral que busca alcançar alta compatibilidade com a Máquina Virtual Ethereum (EVM). Isso é feito por meio de uma máquina virtual personalizada que suporta a API Web3 padrão e mantém os principais recursos da EVM, incluindo a capacidade de criar contratos inteligentes. Seu objetivo é promover a adoção de criptomoedas para garantir a soberania pessoal. Comprometido com o código aberto, a zkSync permite que a comunidade audite e modifique o protocolo, mantendo a descentralização como um valor central.', 'erazk.png', 1, 4, NULL, NULL, NULL, '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/zkSync%20Era" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (18, 'Base', 'Base é uma plataforma Ethereum L2 segura e acessível, incubada na Coinbase, que busca tornar a tecnologia blockchain mais acessível para um público mais amplo. Utilizando a tecnologia de rollup otimista, a Base oferece recursos robustos, custos reduzidos e escalabilidade, proporcionando uma solução confiável para impulsionar aplicativos descentralizados, com integrações perfeitas com a Coinbase e acesso a milhões de usuários verificados.', 'base.png', 1, 3, NULL, NULL, NULL, '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Base" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (25, 'Loopring', 'Loopring é uma plataforma de finanças descentralizadas que opera na camada 2 do Ethereum com foco na tecnologia ZK-Rollup. Sua visão é simplificar e aprimorar o acesso às finanças por meio da blockchain. O diferencial da Loopring reside na combinação de alta segurança e desempenho. Ao utilizar zkRollup, a Loopring oferece transações mais rápidas e econômicas, enquanto os usuários mantêm controle total sobre seus ativos. Além disso, a Loopring contribui para reduzir a congestão na rede Ethereum, oferecendo uma alternativa de baixo custo e eficiente.', 'loopring.png', 1, 4, '1934', 'BINANCE:LRCUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=LRC&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Loopring" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/protocol/loopring" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (20, 'Fuel', 'Fuel é uma tecnologia desenvolvida para melhorar a eficiência e escalabilidade da rede Ethereum. Ela atua como uma camada de execução modular que otimiza a validação de transações, especialmente as relacionadas a pagamentos. Uma de suas principais características é a capacidade de processar transações de forma mais rápida, permitindo o processamento em paralelo. Em resumo, a Fuel é uma solução destinada a tornar as transações de pagamento na Ethereum mais eficientes por meio da técnica de Rollup Otimista.', 'fuel.png', 1, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.plataforma VALUES (16, 'Starknet', 'StarkNet é uma solução descentralizada de rollup de conhecimento zero (ZK-Rollup), operando sem a necessidade de permissões e resistente à censura. Essa plataforma suporta a computação geral na rede Ethereum, permitindo que desenvolvedores criem aplicativos na StarkNet que habilitam os usuários a enviar transações de forma semelhante ao Ethereum convencional. De maneira periódica, todas as transações realizadas na StarkNet são consolidadas e submetidas a uma prova de validação, que é então verificada na blockchain principal.', 'stark.png', 1, 4, NULL, NULL, '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=STRK&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Starknet" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Starknet" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (31, 'Wormhole', 'Wormhole é um protocolo de comunicação que permite a interação entre diferentes blockchains. Ele facilita a passagem de mensagens e dados entre cadeias, permitindo que desenvolvedores criem aplicativos cross-chain que aproveitem as vantagens de múltiplos ecossistemas. Embora não seja uma blockchain, Wormhole fornece a infraestrutura necessária para aplicações como trocas cross-chain, governança e jogos, possibilitando a transferência de liquidez, votos e recompensas entre diferentes redes de maneira eficiente e segura.', 'wormhole.jpg', 1, 1, '29587', 'BINANCE:WUSDT', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=W&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Wormhole" height="350px"></iframe>', NULL);
INSERT INTO public.plataforma VALUES (23, 'Gnosis Chain', 'Gnosis Chain é uma das primeiras sidechains desenvolvidas para escalar o Ethereum e foi projetada para atuar como uma camada de execução para diversos protocolos. O seu grande destaque é a eliminação das taxas de gás em ETH, o que a torna particularmente atrativa para protocolos com demanda de alta frequência. Essa sidechan EVM é governada pelo GnosisDAO e utiliza o token xDAI para transações e taxas de gás, oferecendo tempos de transação ágeis e custos de transação mais baixos.', 'gnosis.png', 1, 2, '1659', 'COINBASE:GNOUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=GNO&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Gnosis" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Gnosis" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (32, 'Perun', 'Perun é um sistema avançado de canais de pagamento e canais de estado sobre a Ethereum. Ele permite que múltiplas transações sejam realizadas fora da blockchain principal, utilizando canais virtuais que minimizam a necessidade de interação com intermediários. Isso reduz significativamente as taxas de transação e melhora a escalabilidade, permitindo pagamentos instantâneos e seguros. A tecnologia utiliza contratos inteligentes para garantir a liquidação justa de disputas e suporta a execução de contratos fora da cadeia principal. Perun é ideal para aplicações que exigem alta frequência de microtransações, como IoT e serviços de microtransações.', 'perun.svg', 1, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.plataforma VALUES (34, 'Nitro State Channels', 'O Nitro State Channel Framework permite transferências de criptoativos com custos ultra-baixos e latência quase nula. Ele funciona ao permitir que os usuários depositem seus fundos em uma rede "layer 2" que herda propriedades da blockchain subjacente, como a ausência de necessidade de confiança em terceiros. Essa rede oferece vantagens significativas, permitindo conexões diretas e privadas com qualquer outro usuário em frações de segundo e pagamentos extremamente rápidos, sem taxas por transação (apenas uma pequena taxa por unidade de tempo). ', 'nitro.png', 1, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.plataforma VALUES (30, 'Kchannels', 'Kchannels é uma nova plataforma de canais de pagamento para Ethereum, não custodial e minimizando a confiança, com foco em excelente experiência do usuário. Ideal para transações comerciais, Kchannels oferece transações rápidas sem espera por confirmações de blocos, baixas taxas e privacidade, com a maioria das transações não visíveis na blockchain. Possui requisitos mínimos de infraestrutura, transações finais assim que completadas, sem necessidade de token especial, evitando a complexidade de enviar transações por uma rede, sem capital necessário para manter canais e alta escalabilidade, suportando milhares de transações por segundo. O design dos canais permite múltiplos ativos em uma transação, canais não supervisionados que podem receber transações, depósitos e saques rápidos em um canal aberto, e a maioria dos usuários precisa de um canal para todas as necessidades.', 'kchannels.png', 1, 7, NULL, NULL, NULL, NULL);
INSERT INTO public.plataforma VALUES (21, 'Polygon PoS', 'Polygon PoS é uma plataforma blockchain que se destaca por sua arquitetura escalável de proof-of-stake (POS) e sua integração com a tecnologia Plasma na Ethereum. Ela é um dos protocolos mais amplamente utilizados no mundo, oferecendo uma gama de aplicações descentralizadas (dApps) e processando mais de 3 milhões de transações diárias. A integração da tecnologia Plasma na Polygon amplia ainda mais sua capacidade de escalabilidade, tornando-a uma escolha atraente para projetos que buscam soluções de alta eficiência e segurança no ecossistema blockchain.', 'polygon.png', 1, 6, '3890', 'BINANCE:MATICUSD', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=MATIC&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Polygon" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Polygon" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (33, 'Raiden Network', 'A Rede Raiden é uma solução de escalabilidade off-chain para transferências de tokens compatíveis com ERC20 na blockchain Ethereum. Semelhante à Lightning Network do Bitcoin, permite pagamentos quase instantâneos, com baixas taxas, escaláveis e que preservam a privacidade. A Raiden Network permite transferências seguras de tokens entre participantes sem necessidade de consenso global, utilizando canais de pagamento que mantêm as transferências fora da blockchain principal. Esses canais podem ser abertos e fechados on-chain, mas todas as transferências intermediárias são feitas off-chain, garantindo rapidez e eficiência.', 'raiden.jpg', 1, 7, '2161', 'BINANCE:RDNTUSDT', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=RDN&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Raiden%20Network" height="350px"></iframe>', NULL);
INSERT INTO public.plataforma VALUES (39, 'ApeX', 'Apex é uma plataforma descentralizada que oferece uma solução de negociação de derivados de criptomoedas com alto desempenho e baixas taxas. Projetada para proporcionar uma experiência de negociação rápida e eficiente, a Apex utiliza a tecnologia de camada 2 para escalar operações, garantindo que os usuários possam executar negociações com latência mínima. A plataforma é construída para ser totalmente descentralizada, eliminando a necessidade de intermediários e proporcionando maior controle aos usuários sobre seus ativos. Com um foco em segurança e transparência, a Apex também implementa mecanismos robustos para proteger os fundos dos usuários e garantir que as operações sejam realizadas de maneira justa e confiável.', 'apex.png', 1, 5, '19843', 'BYBIT:APEXUSDT', NULL, '<iframe  width="100%" height="360px" src="https://defillama.com/chart/protocol/apex-protocol#information?&theme=dark" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (35, 'Stargate', 'A Stargate Finance é um protocolo descentralizado que facilita a transferência de ativos entre diferentes blockchains, garantindo a segurança e a liquidez durante o processo. Ele funciona como uma ponte inter-blockchain, permitindo que os usuários movam seus ativos de uma rede para outra sem a necessidade de confiar em terceiros. O protocolo utiliza um modelo de liquidez unificada, o que significa que os usuários podem acessar a liquidez diretamente do pool global, garantindo transferências rápidas e eficientes. Além disso, a Stargate Finance oferece uma experiência de usuário simplificada, eliminando a complexidade normalmente associada a transferências entre blockchains diferentes.', 'stargate.svg', 1, 1, '18934', 'BINANCE:STGUSDT', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=STG&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Stargate" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/protocol/stargate-v2#information?&theme=dark" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (36, 'Satellite', 'Satellite é uma ferramenta descentralizada que permite a transferência de tokens entre diferentes blockchains de maneira segura e sem fricção. Operando como uma ponte entre redes, o Satellite facilita a interoperabilidade entre blockchains, garantindo que os usuários possam mover seus ativos de uma rede para outra com segurança e confiança. O processo é simples e eficiente: os usuários enviam seus tokens para o contrato inteligente do Satellite em uma blockchain, e em seguida, recebem a quantidade correspondente de tokens na blockchain de destino. Com o suporte da infraestrutura robusta da Axelar, o Satellite garante que as transferências sejam rápidas e que a integridade dos ativos seja mantida durante todo o processo.', 'satellite.jpg', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.plataforma VALUES (38, 'Immutable X', 'A Immutable X (IMX) é uma solução de escalabilidade de camada 2 para NFTs (tokens não fungíveis) construída sobre a blockchain Ethereum. Ela permite transações rápidas e sem taxas de gas, ao mesmo tempo que preserva a segurança e a descentralização da rede Ethereum. A IMX utiliza a tecnologia zk-Rollups para agrupar milhares de transações em um único lote, que é processado fora da cadeia principal e depois registrado na blockchain de forma eficiente. Além disso, a Immutable X oferece uma experiência de usuário fluida, permitindo a criação e a negociação de NFTs de forma rápida e sem custos adicionais. Com foco na sustentabilidade e na escalabilidade, a IMX se posiciona como uma plataforma ideal para desenvolvedores e criadores que desejam explorar o potencial dos NFTs sem as limitações típicas da rede principal do Ethereum.', 'imx.png', 1, 5, '10603', 'BINANCE:IMXUSDT', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=IMX&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Immutable%20X" height="350px"></iframe>', '<iframe  width="100%" height="360px" src="https://defillama.com/chart/protocol/immutablex#information?&theme=dark" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (37, 'Scroll', 'O Scroll é um protocolo de escalabilidade de camada 2 baseado na tecnologia zk-Rollups, projetado para melhorar a eficiência e reduzir os custos das transações na blockchain Ethereum. Ele funciona agrupando múltiplas transações em um único "rollup", que é então submetido à rede principal do Ethereum para verificação. O Scroll utiliza provas de conhecimento zero (zk-SNARKs) para garantir que as transações sejam validadas de forma privada e segura, sem a necessidade de revelar detalhes confidenciais. Com essa abordagem, o Scroll consegue reduzir significativamente as taxas de transação e aumentar a capacidade de processamento da rede, ao mesmo tempo em que preserva a descentralização e a segurança da Ethereum.', 'scroll.png', 1, 4, '', NULL, NULL, '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Scroll?" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (40, 'Rhino.fi', 'A Rhino.fi é uma plataforma descentralizada de finanças (DeFi) que oferece aos usuários uma experiência de trading multi-chain sem a complexidade de interagir diretamente com diferentes blockchains. Ela funciona como um hub que conecta várias redes blockchain, permitindo que os usuários acessem e negociem ativos de diferentes cadeias de forma simplificada e eficiente. A Rhino.fi proporciona uma interface única e integrada, onde os usuários podem trocar tokens, fornecer liquidez e participar de outros serviços DeFi sem precisar sair da plataforma ou pagar taxas elevadas de gas. Com um foco em acessibilidade e segurança, a Rhino.fi utiliza soluções de camada 2 para garantir transações rápidas e de baixo custo, enquanto mantém a custódia dos ativos sempre sob controle do usuário.', 'rhino.jpg', 1, 5, '10759', NULL, NULL, '<iframe width="100%" height="360px" src="https://defillama.com/chart/protocol/rhino.fi" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (41, 'Kroma', 'Kroma é uma solução de escalabilidade de camada 2 voltada para a blockchain Ethereum, projetada para melhorar a eficiência e reduzir os custos das transações na rede. Utilizando tecnologia de rollups, o Kroma agrupa múltiplas transações em pacotes, que são processados fora da cadeia principal e posteriormente validados no Ethereum. Isso permite que as transações sejam executadas de forma rápida e com taxas significativamente mais baixas do que na camada 1. Kroma também se destaca por manter a segurança e a descentralização da Ethereum, ao mesmo tempo que aumenta a capacidade de processamento da rede. A plataforma é ideal para desenvolvedores e usuários que buscam uma experiência de uso mais acessível, sem sacrificar a confiança e a robustez da blockchain Ethereum.', 'kroma.svg', 1, 3, '27190', NULL, NULL, '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Kroma?" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (42, 'Zora', 'Zora Network é uma solução de camada 2 desenvolvida para tornar a movimentação de mídia na blockchain mais rápida, eficiente e acessível. Construída com base no OP Stack de código aberto, a Zora Network oferece uma plataforma escalável que permite transações de baixo custo na rede Ethereum, ao mesmo tempo em que mantém a segurança e a descentralização características dessa blockchain. A Zora Network processa as transações fora da rede principal da Ethereum, resumindo-as posteriormente na camada 1, o que resulta em uma experiência de uso mais ágil e econômica. Além disso, os usuários podem utilizar suas carteiras Ethereum existentes, como Metamask, na Zora Network sem complicações. Para realizar transações na Zora, é necessário transferir ETH para a rede, utilizando uma ponte blockchain nativa, que garante que os ativos sejam movidos de forma segura entre as redes. A Zora Network se destaca por simplificar o uso da Ethereum, tornando a interação com a blockchain mais acessível para criadores e desenvolvedores de mídia.', 'zora.webp', 1, 3, NULL, NULL, NULL, '<iframe width="100%" height="360px" src="https://defillama.com/chart/protocol/zora#information?" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (43, 'Aevo', 'A Aevo é uma plataforma descentralizada de negociação de derivativos de criptomoedas, projetada para oferecer aos usuários uma experiência de trading robusta e eficiente. Com um foco em flexibilidade e segurança, a AEVO permite a negociação de uma ampla variedade de contratos derivados, incluindo opções, futuros e swaps. A plataforma é construída para suportar alta demanda, garantindo execuções rápidas e com baixa latência, mesmo em condições de mercado voláteis. Além disso, a AEVO integra soluções avançadas de gerenciamento de risco, proporcionando aos traders as ferramentas necessárias para proteger suas posições. A interface da AEVO é intuitiva e acessível, permitindo que tanto traders experientes quanto iniciantes possam aproveitar os benefícios da negociação de derivativos em um ambiente seguro e transparente.', 'aevo.png', 1, 3, '29676', 'BINANCE:AEVOUSDT', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=AEVO&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Aevo" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/protocol/aevo#information?" title="DefiLlama" frameborder="0"></iframe>');
INSERT INTO public.plataforma VALUES (44, 'Manta Pacific', 'A Manta Pacific é uma plataforma de camada 2 (L2) dedicada a aplicações de conhecimento zero (ZK) nativas ao EVM, projetada para oferecer um ambiente escalável e de baixo custo para o desenvolvimento de dApps ZK na Ethereum. Utilizando a camada de disponibilidade de dados da Celestia e o zkEVM, a Manta Pacific combina alta escalabilidade com baixas taxas de transação, facilitando a criação de aplicações que priorizam a segurança e a privacidade dos usuários. Com ferramentas como os Circuitos Universais, os desenvolvedores podem integrar facilmente recursos ZK em contratos Solidity, tornando a Manta Pacific uma solução ideal para a próxima geração de aplicativos descentralizados na Web3.', 'manta.png', 1, 3, '13631', 'BINANCE:MANTAUSDT', '<iframe width="100%" scrolling="yes" allowtransparency="true" frameborder="0" src="https://cryptopanic.com/widgets/news/?bg_color=FAFAFA&amp;currencies=MANTA&amp;font_family=sans&amp;header_bg_color=FAFAFA&amp;header_text_color=002C53&amp;link_color=635DFF&amp;news_feed=recent&amp;posts_limit=5&amp;text_color=002C53&amp;title=Manta%20Pacific" height="350px"></iframe>', '<iframe width="100%" height="360px" src="https://defillama.com/chart/chain/Manta" title="DefiLlama" frameborder="0"></iframe>');


--
-- TOC entry 2933 (class 0 OID 49668)
-- Dependencies: 214
-- Data for Name: plataforma_blockchain; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.plataforma_blockchain VALUES (537, 1, 32);
INSERT INTO public.plataforma_blockchain VALUES (540, 1, 33);
INSERT INTO public.plataforma_blockchain VALUES (541, 1, 29);
INSERT INTO public.plataforma_blockchain VALUES (542, 15, 29);
INSERT INTO public.plataforma_blockchain VALUES (543, 1, 34);
INSERT INTO public.plataforma_blockchain VALUES (562, 1, 35);
INSERT INTO public.plataforma_blockchain VALUES (563, 3, 35);
INSERT INTO public.plataforma_blockchain VALUES (564, 6, 35);
INSERT INTO public.plataforma_blockchain VALUES (565, 8, 35);
INSERT INTO public.plataforma_blockchain VALUES (566, 9, 35);
INSERT INTO public.plataforma_blockchain VALUES (567, 10, 35);
INSERT INTO public.plataforma_blockchain VALUES (207, 1, 20);
INSERT INTO public.plataforma_blockchain VALUES (568, 11, 35);
INSERT INTO public.plataforma_blockchain VALUES (569, 7, 35);
INSERT INTO public.plataforma_blockchain VALUES (570, 14, 35);
INSERT INTO public.plataforma_blockchain VALUES (333, 1, 27);
INSERT INTO public.plataforma_blockchain VALUES (334, 11, 27);
INSERT INTO public.plataforma_blockchain VALUES (578, 8, 36);
INSERT INTO public.plataforma_blockchain VALUES (579, 6, 36);
INSERT INTO public.plataforma_blockchain VALUES (335, 13, 27);
INSERT INTO public.plataforma_blockchain VALUES (580, 3, 36);
INSERT INTO public.plataforma_blockchain VALUES (581, 1, 36);
INSERT INTO public.plataforma_blockchain VALUES (582, 7, 36);
INSERT INTO public.plataforma_blockchain VALUES (583, 11, 36);
INSERT INTO public.plataforma_blockchain VALUES (584, 10, 36);
INSERT INTO public.plataforma_blockchain VALUES (587, 1, 37);
INSERT INTO public.plataforma_blockchain VALUES (460, 1, 22);
INSERT INTO public.plataforma_blockchain VALUES (464, 1, 24);
INSERT INTO public.plataforma_blockchain VALUES (465, 10, 24);
INSERT INTO public.plataforma_blockchain VALUES (466, 16, 24);
INSERT INTO public.plataforma_blockchain VALUES (596, 10, 38);
INSERT INTO public.plataforma_blockchain VALUES (597, 8, 38);
INSERT INTO public.plataforma_blockchain VALUES (598, 6, 38);
INSERT INTO public.plataforma_blockchain VALUES (599, 4, 38);
INSERT INTO public.plataforma_blockchain VALUES (600, 3, 38);
INSERT INTO public.plataforma_blockchain VALUES (601, 1, 38);
INSERT INTO public.plataforma_blockchain VALUES (602, 11, 38);
INSERT INTO public.plataforma_blockchain VALUES (603, 7, 38);
INSERT INTO public.plataforma_blockchain VALUES (607, 10, 39);
INSERT INTO public.plataforma_blockchain VALUES (608, 8, 39);
INSERT INTO public.plataforma_blockchain VALUES (609, 1, 39);
INSERT INTO public.plataforma_blockchain VALUES (476, 1, 13);
INSERT INTO public.plataforma_blockchain VALUES (477, 8, 13);
INSERT INTO public.plataforma_blockchain VALUES (480, 1, 14);
INSERT INTO public.plataforma_blockchain VALUES (481, 7, 14);
INSERT INTO public.plataforma_blockchain VALUES (484, 1, 15);
INSERT INTO public.plataforma_blockchain VALUES (485, 6, 15);
INSERT INTO public.plataforma_blockchain VALUES (486, 1, 16);
INSERT INTO public.plataforma_blockchain VALUES (487, 1, 17);
INSERT INTO public.plataforma_blockchain VALUES (488, 1, 18);
INSERT INTO public.plataforma_blockchain VALUES (489, 1, 19);
INSERT INTO public.plataforma_blockchain VALUES (492, 8, 23);
INSERT INTO public.plataforma_blockchain VALUES (493, 1, 23);
INSERT INTO public.plataforma_blockchain VALUES (494, 14, 23);
INSERT INTO public.plataforma_blockchain VALUES (495, 1, 25);
INSERT INTO public.plataforma_blockchain VALUES (496, 9, 25);
INSERT INTO public.plataforma_blockchain VALUES (497, 1, 26);
INSERT INTO public.plataforma_blockchain VALUES (498, 6, 28);
INSERT INTO public.plataforma_blockchain VALUES (499, 8, 28);
INSERT INTO public.plataforma_blockchain VALUES (500, 7, 28);
INSERT INTO public.plataforma_blockchain VALUES (501, 1, 28);
INSERT INTO public.plataforma_blockchain VALUES (624, 16, 40);
INSERT INTO public.plataforma_blockchain VALUES (625, 6, 40);
INSERT INTO public.plataforma_blockchain VALUES (626, 8, 40);
INSERT INTO public.plataforma_blockchain VALUES (627, 10, 40);
INSERT INTO public.plataforma_blockchain VALUES (510, 11, 11);
INSERT INTO public.plataforma_blockchain VALUES (511, 8, 11);
INSERT INTO public.plataforma_blockchain VALUES (512, 10, 11);
INSERT INTO public.plataforma_blockchain VALUES (513, 1, 11);
INSERT INTO public.plataforma_blockchain VALUES (514, 6, 11);
INSERT INTO public.plataforma_blockchain VALUES (515, 14, 11);
INSERT INTO public.plataforma_blockchain VALUES (516, 12, 11);
INSERT INTO public.plataforma_blockchain VALUES (517, 7, 11);
INSERT INTO public.plataforma_blockchain VALUES (628, 11, 40);
INSERT INTO public.plataforma_blockchain VALUES (629, 1, 40);
INSERT INTO public.plataforma_blockchain VALUES (630, 7, 40);
INSERT INTO public.plataforma_blockchain VALUES (523, 1, 30);
INSERT INTO public.plataforma_blockchain VALUES (524, 6, 21);
INSERT INTO public.plataforma_blockchain VALUES (525, 1, 21);
INSERT INTO public.plataforma_blockchain VALUES (526, 1, 31);
INSERT INTO public.plataforma_blockchain VALUES (527, 3, 31);
INSERT INTO public.plataforma_blockchain VALUES (528, 4, 31);
INSERT INTO public.plataforma_blockchain VALUES (529, 5, 31);
INSERT INTO public.plataforma_blockchain VALUES (530, 6, 31);
INSERT INTO public.plataforma_blockchain VALUES (531, 8, 31);
INSERT INTO public.plataforma_blockchain VALUES (532, 9, 31);
INSERT INTO public.plataforma_blockchain VALUES (533, 10, 31);
INSERT INTO public.plataforma_blockchain VALUES (534, 11, 31);
INSERT INTO public.plataforma_blockchain VALUES (535, 7, 31);
INSERT INTO public.plataforma_blockchain VALUES (536, 15, 31);
INSERT INTO public.plataforma_blockchain VALUES (633, 1, 41);
INSERT INTO public.plataforma_blockchain VALUES (635, 1, 42);
INSERT INTO public.plataforma_blockchain VALUES (636, 1, 43);
INSERT INTO public.plataforma_blockchain VALUES (640, 6, 44);
INSERT INTO public.plataforma_blockchain VALUES (641, 5, 44);
INSERT INTO public.plataforma_blockchain VALUES (642, 1, 44);


--
-- TOC entry 2931 (class 0 OID 49655)
-- Dependencies: 212
-- Data for Name: tipo_escalabilidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_escalabilidade VALUES (3, 'Rollup Otimista');
INSERT INTO public.tipo_escalabilidade VALUES (4, 'Rollup ZK');
INSERT INTO public.tipo_escalabilidade VALUES (5, 'Validium');
INSERT INTO public.tipo_escalabilidade VALUES (1, 'Ponte');
INSERT INTO public.tipo_escalabilidade VALUES (2, 'Sidechain');
INSERT INTO public.tipo_escalabilidade VALUES (6, 'Plasma');
INSERT INTO public.tipo_escalabilidade VALUES (7, 'State Channel');


--
-- TOC entry 2929 (class 0 OID 49642)
-- Dependencies: 210
-- Data for Name: tipo_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_menu VALUES (1, 'Escalabilidade');
INSERT INTO public.tipo_menu VALUES (2, 'DEXs');
INSERT INTO public.tipo_menu VALUES (3, 'Lending');
INSERT INTO public.tipo_menu VALUES (4, 'Liquid Staking');
INSERT INTO public.tipo_menu VALUES (5, 'NFTs');


--
-- TOC entry 2925 (class 0 OID 49618)
-- Dependencies: 206
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario VALUES (1, 'admin', '$2b$10$lQBcZ/crjM5LooFCXc/S6.zTs2qAn4eE8s/iPqt6mjOfip0Ufs.xK');


--
-- TOC entry 2955 (class 0 OID 0)
-- Dependencies: 203
-- Name: blockchain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blockchain_id_seq', 1, false);


--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 219
-- Name: link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.link_id_seq', 736, true);


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 207
-- Name: melhoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.melhoria_id_seq', 22, true);


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 217
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 6, true);


--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 213
-- Name: plataforma_blockchain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plataforma_blockchain_id_seq', 642, true);


--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 215
-- Name: plataforma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plataforma_id_seq', 44, true);


--
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 211
-- Name: tipo_escalabilidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_escalabilidade_id_seq', 1, true);


--
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 209
-- Name: tipo_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_menu_id_seq', 1, true);


--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 205
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);


--
-- TOC entry 2784 (class 2606 OID 49684)
-- Name: plataforma PK_09db36bfa984b3d3bce5393ac23; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma
    ADD CONSTRAINT "PK_09db36bfa984b3d3bce5393ac23" PRIMARY KEY (id);


--
-- TOC entry 2782 (class 2606 OID 49673)
-- Name: plataforma_blockchain PK_20628a21a625771160c4b673dd4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma_blockchain
    ADD CONSTRAINT "PK_20628a21a625771160c4b673dd4" PRIMARY KEY (id);


--
-- TOC entry 2790 (class 2606 OID 57772)
-- Name: link PK_26206fb7186da72fbb9eaa3fac9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT "PK_26206fb7186da72fbb9eaa3fac9" PRIMARY KEY (id);


--
-- TOC entry 2774 (class 2606 OID 49650)
-- Name: tipo_menu PK_3ebae868d856df9d6f3a48f4ceb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_menu
    ADD CONSTRAINT "PK_3ebae868d856df9d6f3a48f4ceb" PRIMARY KEY (id);


--
-- TOC entry 2778 (class 2606 OID 49663)
-- Name: tipo_escalabilidade PK_52104943b2c68c35c7e18e0cc10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_escalabilidade
    ADD CONSTRAINT "PK_52104943b2c68c35c7e18e0cc10" PRIMARY KEY (id);


--
-- TOC entry 2788 (class 2606 OID 49718)
-- Name: migrations PK_8c82d7f526340ab734260ea46be; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);


--
-- TOC entry 2768 (class 2606 OID 49626)
-- Name: usuario PK_a56c58e5cabaa04fb2c98d2d7e2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "PK_a56c58e5cabaa04fb2c98d2d7e2" PRIMARY KEY (id);


--
-- TOC entry 2772 (class 2606 OID 49639)
-- Name: melhoria PK_e14c59785a7ff256e016c9d4d73; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.melhoria
    ADD CONSTRAINT "PK_e14c59785a7ff256e016c9d4d73" PRIMARY KEY (id);


--
-- TOC entry 2764 (class 2606 OID 49613)
-- Name: blockchain PK_e8d1216086807f2eb4cc145b3a2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blockchain
    ADD CONSTRAINT "PK_e8d1216086807f2eb4cc145b3a2" PRIMARY KEY (id);


--
-- TOC entry 2776 (class 2606 OID 49652)
-- Name: tipo_menu UQ_03765680d6068b1a6017036ebec; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_menu
    ADD CONSTRAINT "UQ_03765680d6068b1a6017036ebec" UNIQUE (nome);


--
-- TOC entry 2780 (class 2606 OID 49665)
-- Name: tipo_escalabilidade UQ_04a2853b3eb022dab861c789831; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_escalabilidade
    ADD CONSTRAINT "UQ_04a2853b3eb022dab861c789831" UNIQUE (nome);


--
-- TOC entry 2766 (class 2606 OID 49615)
-- Name: blockchain UQ_1322546019df17b6f8e5eb4ed6d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blockchain
    ADD CONSTRAINT "UQ_1322546019df17b6f8e5eb4ed6d" UNIQUE (nome);


--
-- TOC entry 2786 (class 2606 OID 49686)
-- Name: plataforma UQ_4da818e4ba6bc6a822fb09872a8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma
    ADD CONSTRAINT "UQ_4da818e4ba6bc6a822fb09872a8" UNIQUE (nome);


--
-- TOC entry 2770 (class 2606 OID 49628)
-- Name: usuario UQ_59bc805e13413e4be83be3a7752; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "UQ_59bc805e13413e4be83be3a7752" UNIQUE (login);


--
-- TOC entry 2793 (class 2606 OID 49697)
-- Name: plataforma FK_2df8856ccee8b58ff03033311f1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma
    ADD CONSTRAINT "FK_2df8856ccee8b58ff03033311f1" FOREIGN KEY ("tipoMenuId") REFERENCES public.tipo_menu(id);


--
-- TOC entry 2794 (class 2606 OID 49702)
-- Name: plataforma FK_40ee296553c847c099fa85ec8be; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma
    ADD CONSTRAINT "FK_40ee296553c847c099fa85ec8be" FOREIGN KEY ("tipoEscalabilidadeId") REFERENCES public.tipo_escalabilidade(id);


--
-- TOC entry 2792 (class 2606 OID 65958)
-- Name: plataforma_blockchain FK_690e900e936162e08e8fcb6954a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma_blockchain
    ADD CONSTRAINT "FK_690e900e936162e08e8fcb6954a" FOREIGN KEY ("idPlataformaId") REFERENCES public.plataforma(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2791 (class 2606 OID 49687)
-- Name: plataforma_blockchain FK_a030d8defcbd70b1a9cf4960b56; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plataforma_blockchain
    ADD CONSTRAINT "FK_a030d8defcbd70b1a9cf4960b56" FOREIGN KEY ("idBlockchainId") REFERENCES public.blockchain(id);


--
-- TOC entry 2795 (class 2606 OID 57773)
-- Name: link FK_e41b385bce72572f287fc01ac30; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT "FK_e41b385bce72572f287fc01ac30" FOREIGN KEY ("plataformaId") REFERENCES public.plataforma(id) ON DELETE CASCADE;


-- Completed on 2024-08-20 21:42:18

--
-- PostgreSQL database dump complete
--

