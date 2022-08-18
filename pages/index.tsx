import type { NextPage } from 'next'
import styles from '../styles/Home.module.css'

import Footer from '../components/Footer'
import Head from '../components/Head'
import Main from '../components/Main'

const Home: NextPage = () => {
  return (
    <div className={styles.container}>
      <Head />
      <Main />
      <Footer />
    </div>
  )
}

export default Home
